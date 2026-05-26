// GENERATED FROM @web3icons/core@4.0.51 — DO NOT EDIT
import SwiftUI

internal struct TokenKARATE: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.125*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.6339166667*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.6339166667*width, y: 0.2857083333*height))
        _hole2.addLine(to: CGPoint(x: 0.2857083333*width, y: 0.2857083333*height))
        _hole2.addLine(to: CGPoint(x: 0.2857083333*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.125*width, y: 0.875*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.875*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.3660833333*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.3660833333*width, y: 0.7142916667*height))
        _hole2.addLine(to: CGPoint(x: 0.7142916667*width, y: 0.7142916667*height))
        _hole2.addLine(to: CGPoint(x: 0.7142916667*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.875*width, y: 0.125*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}