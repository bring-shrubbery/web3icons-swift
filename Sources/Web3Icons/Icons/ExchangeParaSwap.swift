// GENERATED FROM @web3icons/core@4.0.51 — DO NOT EDIT
import SwiftUI

internal struct ExchangeParaSwap: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.18125*width, y: 0.7999583333*height))
        _hole2.addLine(to: CGPoint(x: 0.528125*width, y: 0.2000416667*height))
        _hole2.addLine(to: CGPoint(x: 0.875*width, y: 0.7999583333*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.125*width, y: 0.2000416667*height))
        _hole2.addLine(to: CGPoint(x: 0.44375*width, y: 0.2000416667*height))
        _hole2.addLine(to: CGPoint(x: 0.284375*width, y: 0.48125*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.528125*width, y: 0.365625*height))
        _hole2.addLine(to: CGPoint(x: 0.3229166667*width, y: 0.7205416667*height))
        _hole2.addLine(to: CGPoint(x: 0.7333333333*width, y: 0.7205416667*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}