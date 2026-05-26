// GENERATED FROM @web3icons/core@4.0.51 — DO NOT EDIT
import SwiftUI

internal struct TokenNGC: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.4004583333*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.4117083333*width, y: 0.5938333333*height))
        _hole2.addLine(to: CGPoint(x: 0.3500416667*width, y: 0.5974166667*height))
        _hole2.addLine(to: CGPoint(x: 0.3775833333*width, y: 0.352*height))
        _hole2.addLine(to: CGPoint(x: 0.6353333333*width, y: 0.3158333333*height))
        _hole2.addLine(to: CGPoint(x: 0.551*width, y: 0.5374166667*height))
        _hole2.addLine(to: CGPoint(x: 0.6499583333*width, y: 0.5293333333*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.47825*width, y: 0.2502083333*height))
        _hole2.addCurve(to: CGPoint(x: 0.4295*width, y: 0.1559166667*height), control1: CGPoint(x: 0.4863333333*width, y: 0.1671666667*height), control2: CGPoint(x: 0.4295*width, y: 0.1559166667*height))
        _hole2.addLine(to: CGPoint(x: 0.44*width, y: 0.125*height))
        _hole2.addCurve(to: CGPoint(x: 0.5121666667*width, y: 0.2479583333*height), control1: CGPoint(x: 0.5275833333*width, y: 0.1567083333*height), control2: CGPoint(x: 0.5121666667*width, y: 0.2479583333*height))
        _hole2.addLine(to: CGPoint(x: 0.6321666667*width, y: 0.299875*height))
        _hole2.addLine(to: CGPoint(x: 0.3775833333*width, y: 0.33175*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}