// GENERATED FROM @web3icons/core@4.0.51 — DO NOT EDIT
import SwiftUI

internal struct TokenNEX: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.2463333333*width, y: 0.2456666667*height))
        _hole2.addLine(to: CGPoint(x: 0.4447916667*width, y: 0.1882916667*height))
        _hole2.addLine(to: CGPoint(x: 0.4447916667*width, y: 0.3376666667*height))
        _hole2.addLine(to: CGPoint(x: 0.4708333333*width, y: 0.3376666667*height))
        _hole2.addCurve(to: CGPoint(x: 0.6522083333*width, y: 0.125*height), control1: CGPoint(x: 0.472875*width, y: 0.2705833333*height), control2: CGPoint(x: 0.5*width, y: 0.125*height))
        _hole2.addCurve(to: CGPoint(x: 0.7536666667*width, y: 0.2668333333*height), control1: CGPoint(x: 0.6972083333*width, y: 0.125*height), control2: CGPoint(x: 0.7552083333*width, y: 0.1505833333*height))
        _hole2.addLine(to: CGPoint(x: 0.7536666667*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.555125*width, y: 0.834875*height))
        _hole2.addLine(to: CGPoint(x: 0.555125*width, y: 0.4142083333*height))
        _hole2.addCurve(to: CGPoint(x: 0.500875*width, y: 0.3623333333*height), control1: CGPoint(x: 0.555125*width, y: 0.3907916667*height), control2: CGPoint(x: 0.5372916667*width, y: 0.365*height))
        _hole2.addCurve(to: CGPoint(x: 0.4448333333*width, y: 0.4256666667*height), control1: CGPoint(x: 0.4647083333*width, y: 0.3599166667*height), control2: CGPoint(x: 0.4448333333*width, y: 0.397875*height))
        _hole2.addLine(to: CGPoint(x: 0.4448333333*width, y: 0.821375*height))
        _hole2.addLine(to: CGPoint(x: 0.2463333333*width, y: 0.7697916667*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}