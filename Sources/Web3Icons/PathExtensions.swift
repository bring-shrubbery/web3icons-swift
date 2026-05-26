import SwiftUI
import CoreGraphics

// Path helpers ported from the svg-to-swiftui project's visual-tests template,
// adapted to SwiftUI.Path:
// https://github.com/bring-shrubbery/SVG-to-SwiftUI/blob/main/packages/svg-to-swiftui-core/visual-tests/swift-template.swift
//
// The generator emits calls to these on the icons it produces:
//   - `addReversedPath(_:)` for fill icons, to cut evenodd holes via reversed
//     inner contours (so the default non-zero winding fill renders them);
//   - `cwStrokedPath(_:)` / `ccwStrokedPath(_:)` for the few icons whose source
//     SVG uses strokes (e.g. the `apechain` network).

extension Path {
    /// Appends `other` with each of its subpaths reversed. Used to convert
    /// evenodd holes into reversed contours that read as holes under the
    /// default non-zero winding fill.
    mutating func addReversedPath(_ other: Path) {
        struct Elem {
            var type: CGPathElementType
            var points: [CGPoint]
        }
        var elements: [Elem] = []
        other.cgPath.applyWithBlock { ptr in
            let e = ptr.pointee
            var pts: [CGPoint] = []
            switch e.type {
            case .moveToPoint: pts = [e.points[0]]
            case .addLineToPoint: pts = [e.points[0]]
            case .addQuadCurveToPoint: pts = [e.points[0], e.points[1]]
            case .addCurveToPoint: pts = [e.points[0], e.points[1], e.points[2]]
            case .closeSubpath: break
            @unknown default: break
            }
            elements.append(Elem(type: e.type, points: pts))
        }
        var idx = 0
        while idx < elements.count {
            guard elements[idx].type == .moveToPoint else { idx += 1; continue }
            let subStart = elements[idx].points[0]
            var trail: [CGPoint] = [subStart]
            var cmds: [Elem] = []
            var hasClose = false
            var k = idx + 1
            while k < elements.count && elements[k].type != .moveToPoint {
                let e = elements[k]
                switch e.type {
                case .addLineToPoint:
                    trail.append(e.points[0]); cmds.append(e)
                case .addQuadCurveToPoint:
                    trail.append(e.points[1]); cmds.append(e)
                case .addCurveToPoint:
                    trail.append(e.points[2]); cmds.append(e)
                case .closeSubpath:
                    hasClose = true
                default: break
                }
                k += 1
            }
            move(to: trail[trail.count - 1])
            for ri in stride(from: cmds.count - 1, through: 0, by: -1) {
                let cmd = cmds[ri]
                let toPt = trail[ri]
                switch cmd.type {
                case .addLineToPoint:
                    addLine(to: toPt)
                case .addQuadCurveToPoint:
                    addQuadCurve(to: toPt, control: cmd.points[0])
                case .addCurveToPoint:
                    addCurve(to: toPt, control1: cmd.points[1], control2: cmd.points[0])
                default: break
                }
            }
            if hasClose { closeSubpath() }
            idx = k
        }
    }

    func cwStrokedPath(_ style: StrokeStyle) -> Path {
        strokedNormalized(style, targetClockwise: true)
    }

    func ccwStrokedPath(_ style: StrokeStyle) -> Path {
        strokedNormalized(style, targetClockwise: false)
    }

    private func strokedNormalized(_ style: StrokeStyle, targetClockwise: Bool) -> Path {
        let strokedCG = cgPath.copy(
            strokingWithWidth: style.lineWidth,
            lineCap: style.lineCap,
            lineJoin: style.lineJoin,
            miterLimit: style.miterLimit
        )

        var subpathCount = 0
        strokedCG.applyWithBlock { ptr in
            if ptr.pointee.type == .moveToPoint { subpathCount += 1 }
        }

        let stroked = Path(strokedCG)

        // Multi-contour outlines (from closed source paths) have intentional
        // inner contours whose winding must be preserved.
        guard subpathCount == 1 else { return stroked }

        // Sample anchor points and compute the signed area to determine winding.
        var trail: [CGPoint] = []
        strokedCG.applyWithBlock { ptr in
            let e = ptr.pointee
            switch e.type {
            case .moveToPoint:         trail.append(e.points[0])
            case .addLineToPoint:      trail.append(e.points[0])
            case .addQuadCurveToPoint: trail.append(e.points[1])
            case .addCurveToPoint:     trail.append(e.points[2])
            default: break
            }
        }
        var area: CGFloat = 0
        for i in 0..<trail.count {
            let j = (i + 1) % trail.count
            area += trail[i].x * trail[j].y - trail[j].x * trail[i].y
        }

        let isClockwise = area > 0
        if isClockwise == targetClockwise { return stroked }

        var reversed = Path()
        reversed.addReversedPath(stroked)
        return reversed
    }
}
