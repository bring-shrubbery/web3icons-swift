// GENERATED FROM @web3icons/core@4.0.55 — DO NOT EDIT
import SwiftUI

internal struct TokenXPRT: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.265625*width, y: 0.265625*height))
        _hole2.addLine(to: CGPoint(x: 0.265625*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.40625*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.40625*width, y: 0.6640416667*height))
        _hole2.addLine(to: CGPoint(x: 0.534*width, y: 0.6640416667*height))
        _hole2.addCurve(to: CGPoint(x: 0.734375*width, y: 0.464875*height), control1: CGPoint(x: 0.644625*width, y: 0.6640416667*height), control2: CGPoint(x: 0.734375*width, y: 0.575*height))
        _hole2.addCurve(to: CGPoint(x: 0.5339583333*width, y: 0.265625*height), control1: CGPoint(x: 0.734375*width, y: 0.3546666667*height), control2: CGPoint(x: 0.644625*width, y: 0.265625*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.40625*width, y: 0.38725*height))
        _hole2.addLine(to: CGPoint(x: 0.505375*width, y: 0.38725*height))
        _hole2.addCurve(to: CGPoint(x: 0.5834166667*width, y: 0.4648333333*height), control1: CGPoint(x: 0.5485*width, y: 0.38725*height), control2: CGPoint(x: 0.5834166667*width, y: 0.4219166667*height))
        _hole2.addCurve(to: CGPoint(x: 0.5054166667*width, y: 0.5424166667*height), control1: CGPoint(x: 0.583233013*width, y: 0.5077678241*height), control2: CGPoint(x: 0.5483515253*width, y: 0.5424629791*height))
        _hole2.addLine(to: CGPoint(x: 0.40625*width, y: 0.5424166667*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        var _hole4 = Path()
        _hole4.move(to: CGPoint(x: 0.265625*width, y: 0.125*height))
        _hole4.addLine(to: CGPoint(x: 0.734375*width, y: 0.125*height))
        _hole4.addLine(to: CGPoint(x: 0.734375*width, y: 0.21875*height))
        _hole4.addLine(to: CGPoint(x: 0.265625*width, y: 0.21875*height))
        _hole4.closeSubpath()
        path.addReversedPath(_hole4)
        return path
    }
}