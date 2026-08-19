// GENERATED FROM @web3icons/core@4.0.55 — DO NOT EDIT
import SwiftUI

internal struct TokenL2: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.5*width, y: 0.875*height))
        _hole2.addCurve(to: CGPoint(x: 0.875*width, y: 0.5*height), control1: CGPoint(x: 0.7071067812*width, y: 0.875*height), control2: CGPoint(x: 0.875*width, y: 0.7071067812*height))
        _hole2.addCurve(to: CGPoint(x: 0.5*width, y: 0.125*height), control1: CGPoint(x: 0.875*width, y: 0.2928932188*height), control2: CGPoint(x: 0.7071067812*width, y: 0.125*height))
        _hole2.addCurve(to: CGPoint(x: 0.125*width, y: 0.5*height), control1: CGPoint(x: 0.2928932188*width, y: 0.125*height), control2: CGPoint(x: 0.125*width, y: 0.2928932188*height))
        _hole2.addCurve(to: CGPoint(x: 0.5*width, y: 0.875*height), control1: CGPoint(x: 0.125*width, y: 0.7071067812*height), control2: CGPoint(x: 0.2928932188*width, y: 0.875*height))
        _hole2.move(to: CGPoint(x: 0.5*width, y: 0.8529166667*height))
        _hole2.addCurve(to: CGPoint(x: 0.1470833333*width, y: 0.5*height), control1: CGPoint(x: 0.305089507*width, y: 0.8529166667*height), control2: CGPoint(x: 0.1470833333*width, y: 0.694910493*height))
        _hole2.addCurve(to: CGPoint(x: 0.5*width, y: 0.1470833333*height), control1: CGPoint(x: 0.1470833333*width, y: 0.305089507*height), control2: CGPoint(x: 0.305089507*width, y: 0.1470833333*height))
        _hole2.addCurve(to: CGPoint(x: 0.8529166667*width, y: 0.5*height), control1: CGPoint(x: 0.694910493*width, y: 0.1470833333*height), control2: CGPoint(x: 0.8529166667*width, y: 0.305089507*height))
        _hole2.addCurve(to: CGPoint(x: 0.5*width, y: 0.8529166667*height), control1: CGPoint(x: 0.8529166667*width, y: 0.694910493*height), control2: CGPoint(x: 0.694910493*width, y: 0.8529166667*height))
        path.addReversedPath(_hole2)
        var _hole4 = Path()
        _hole4.move(to: CGPoint(x: 0.545*width, y: 0.664125*height))
        _hole4.addLine(to: CGPoint(x: 0.3268333333*width, y: 0.2794166667*height))
        _hole4.addLine(to: CGPoint(x: 0.7647083333*width, y: 0.2794166667*height))
        _hole4.closeSubpath()
        path.addReversedPath(_hole4)
        var _hole6 = Path()
        _hole6.move(to: CGPoint(x: 0.673125*width, y: 0.720625*height))
        _hole6.addLine(to: CGPoint(x: 0.23525*width, y: 0.720625*height))
        _hole6.addLine(to: CGPoint(x: 0.4532083333*width, y: 0.3359166667*height))
        _hole6.closeSubpath()
        path.addReversedPath(_hole6)
        var _hole8 = Path()
        _hole8.move(to: CGPoint(x: 0.4532083333*width, y: 0.3359166667*height))
        _hole8.addLine(to: CGPoint(x: 0.592875*width, y: 0.5802916667*height))
        _hole8.addLine(to: CGPoint(x: 0.545*width, y: 0.664125*height))
        _hole8.addLine(to: CGPoint(x: 0.4060416667*width, y: 0.4192916667*height))
        _hole8.closeSubpath()
        path.addReversedPath(_hole8)
        return path
    }
}