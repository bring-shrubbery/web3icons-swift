// GENERATED FROM @web3icons/core@4.0.51 — DO NOT EDIT
import SwiftUI

internal struct TokenNFTB: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.725*width, y: 0.825*height))
        _hole2.addLine(to: CGPoint(x: 0.725*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.275*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.275*width, y: 0.825*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.725*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.725*width, y: 0.775*height))
        _hole2.addLine(to: CGPoint(x: 0.275*width, y: 0.775*height))
        _hole2.addLine(to: CGPoint(x: 0.275*width, y: 0.125*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.675*width, y: 0.175*height))
        _hole2.addLine(to: CGPoint(x: 0.325*width, y: 0.175*height))
        _hole2.addLine(to: CGPoint(x: 0.325*width, y: 0.725*height))
        _hole2.addLine(to: CGPoint(x: 0.675*width, y: 0.725*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}