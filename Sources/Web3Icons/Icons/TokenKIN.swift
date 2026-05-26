// GENERATED FROM @web3icons/core@4.0.51 — DO NOT EDIT
import SwiftUI

internal struct TokenKIN: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.5*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.830875*width, y: 0.3125*height))
        _hole2.addLine(to: CGPoint(x: 0.830875*width, y: 0.6875*height))
        _hole2.addLine(to: CGPoint(x: 0.5000416667*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.169125*width, y: 0.6875*height))
        _hole2.addLine(to: CGPoint(x: 0.169125*width, y: 0.3125*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}