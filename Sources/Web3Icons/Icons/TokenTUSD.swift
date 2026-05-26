// GENERATED FROM @web3icons/core@4.0.51 — DO NOT EDIT
import SwiftUI

internal struct TokenTUSD: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.375*width, y: 0.125*height))
        _hole2.addCurve(to: CGPoint(x: 0.125*width, y: 0.375*height), control1: CGPoint(x: 0.375*width, y: 0.2630711875*height), control2: CGPoint(x: 0.2630711875*width, y: 0.375*height))
        _hole2.addLine(to: CGPoint(x: 0.125*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.375*width, y: 0.125*height))
        _hole2.move(to: CGPoint(x: 0.625*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.625*width, y: 0.375*height))
        _hole2.addLine(to: CGPoint(x: 0.875*width, y: 0.375*height))
        _hole2.addLine(to: CGPoint(x: 0.875*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.6185*width, y: 0.125*height))
        _hole2.addCurve(to: CGPoint(x: 0.375*width, y: 0.37475*height), control1: CGPoint(x: 0.47825*width, y: 0.125*height), control2: CGPoint(x: 0.375*width, y: 0.23675*height))
        _hole2.addLine(to: CGPoint(x: 0.375*width, y: 0.875*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}