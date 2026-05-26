// GENERATED FROM @web3icons/core@4.0.51 — DO NOT EDIT
import SwiftUI

internal struct TokenFDUSD: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.16375*width, y: 0.6939583333*height))
        _hole2.addLine(to: CGPoint(x: 0.5775833333*width, y: 0.6939583333*height))
        _hole2.addLine(to: CGPoint(x: 0.5775833333*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.1637916667*width, y: 0.875*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.83625*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.3965*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.3965*width, y: 0.5646666667*height))
        _hole2.addLine(to: CGPoint(x: 0.83625*width, y: 0.5646666667*height))
        _hole2.addLine(to: CGPoint(x: 0.83625*width, y: 0.4095*height))
        _hole2.addLine(to: CGPoint(x: 0.577625*width, y: 0.4095*height))
        _hole2.addLine(to: CGPoint(x: 0.577625*width, y: 0.2801666667*height))
        _hole2.addLine(to: CGPoint(x: 0.83625*width, y: 0.2801666667*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}