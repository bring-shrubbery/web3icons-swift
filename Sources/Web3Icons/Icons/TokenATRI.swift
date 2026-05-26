// GENERATED FROM @web3icons/core@4.0.51 — DO NOT EDIT
import SwiftUI

internal struct TokenATRI: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.375*width, y: 0.21875*height))
        _hole2.addLine(to: CGPoint(x: 0.4375*width, y: 0.21875*height))
        _hole2.addLine(to: CGPoint(x: 0.4375*width, y: 0.34375*height))
        _hole2.addCurve(to: CGPoint(x: 0.125*width, y: 0.78125*height), control1: CGPoint(x: 0.4375*width, y: 0.5104166667*height), control2: CGPoint(x: 0.398125*width, y: 0.735625*height))
        _hole2.addLine(to: CGPoint(x: 0.125*width, y: 0.6979166667*height))
        _hole2.addCurve(to: CGPoint(x: 0.374375*width, y: 0.34375*height), control1: CGPoint(x: 0.1875*width, y: 0.6875*height), control2: CGPoint(x: 0.374375*width, y: 0.6145833333*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.4583333333*width, y: 0.21875*height))
        _hole2.addLine(to: CGPoint(x: 0.5416666667*width, y: 0.21875*height))
        _hole2.addLine(to: CGPoint(x: 0.5416666667*width, y: 0.78125*height))
        _hole2.addLine(to: CGPoint(x: 0.4583333333*width, y: 0.78125*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.625*width, y: 0.21875*height))
        _hole2.addLine(to: CGPoint(x: 0.5625*width, y: 0.21875*height))
        _hole2.addLine(to: CGPoint(x: 0.5625*width, y: 0.34375*height))
        _hole2.addCurve(to: CGPoint(x: 0.875*width, y: 0.78125*height), control1: CGPoint(x: 0.5625*width, y: 0.5104166667*height), control2: CGPoint(x: 0.601875*width, y: 0.735625*height))
        _hole2.addLine(to: CGPoint(x: 0.875*width, y: 0.6979166667*height))
        _hole2.addCurve(to: CGPoint(x: 0.625625*width, y: 0.34375*height), control1: CGPoint(x: 0.8125*width, y: 0.6875*height), control2: CGPoint(x: 0.625625*width, y: 0.6145833333*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}