// GENERATED FROM @web3icons/core@4.0.55 — DO NOT EDIT
import SwiftUI

internal struct TokenPIXEL: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.325*width, y: 0.675*height))
        _hole2.addLine(to: CGPoint(x: 0.525*width, y: 0.675*height))
        _hole2.addLine(to: CGPoint(x: 0.525*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.325*width, y: 0.875*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.525*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.60325*width, y: 0.125*height))
        _hole2.addCurve(to: CGPoint(x: 0.875*width, y: 0.397*height), control1: CGPoint(x: 0.75325*width, y: 0.125*height), control2: CGPoint(x: 0.875*width, y: 0.24675*height))
        _hole2.addCurve(to: CGPoint(x: 0.603*width, y: 0.675*height), control1: CGPoint(x: 0.875*width, y: 0.547*height), control2: CGPoint(x: 0.75325*width, y: 0.675*height))
        _hole2.addLine(to: CGPoint(x: 0.3250416667*width, y: 0.675*height))
        _hole2.addLine(to: CGPoint(x: 0.3250416667*width, y: 0.3*height))
        _hole2.addLine(to: CGPoint(x: 0.5250416667*width, y: 0.3*height))
        _hole2.addLine(to: CGPoint(x: 0.5250416667*width, y: 0.475*height))
        _hole2.addLine(to: CGPoint(x: 0.60325*width, y: 0.475*height))
        _hole2.addCurve(to: CGPoint(x: 0.7*width, y: 0.3875*height), control1: CGPoint(x: 0.6525*width, y: 0.475*height), control2: CGPoint(x: 0.7*width, y: 0.43675*height))
        _hole2.addCurve(to: CGPoint(x: 0.603*width, y: 0.3*height), control1: CGPoint(x: 0.7*width, y: 0.33825*height), control2: CGPoint(x: 0.6525*width, y: 0.3*height))
        _hole2.addLine(to: CGPoint(x: 0.525*width, y: 0.3*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.125*width, y: 0.4750416667*height))
        _hole2.addLine(to: CGPoint(x: 0.325*width, y: 0.4750416667*height))
        _hole2.addLine(to: CGPoint(x: 0.325*width, y: 0.6750416667*height))
        _hole2.addLine(to: CGPoint(x: 0.125*width, y: 0.6750416667*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        var _hole4 = Path()
        _hole4.move(to: CGPoint(x: 0.325*width, y: 0.4750416667*height))
        _hole4.addLine(to: CGPoint(x: 0.525*width, y: 0.4750416667*height))
        _hole4.addLine(to: CGPoint(x: 0.525*width, y: 0.6750416667*height))
        _hole4.addLine(to: CGPoint(x: 0.325*width, y: 0.6750416667*height))
        _hole4.closeSubpath()
        path.addReversedPath(_hole4)
        return path
    }
}