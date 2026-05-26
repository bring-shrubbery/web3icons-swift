// GENERATED FROM @web3icons/core@4.0.51 — DO NOT EDIT
import SwiftUI

internal struct TokenDGX: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.5*width, y: 0.453125*height))
        _hole2.addLine(to: CGPoint(x: 0.7109583333*width, y: 0.6640833333*height))
        _hole2.addLine(to: CGPoint(x: 0.5*width, y: 0.875*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.5*width, y: 0.453125*height))
        _hole2.addLine(to: CGPoint(x: 0.5*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.2890833333*width, y: 0.6640833333*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.5*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.5*width, y: 0.3999166667*height))
        _hole2.addLine(to: CGPoint(x: 0.2614166667*width, y: 0.640625*height))
        _hole2.addLine(to: CGPoint(x: 0.125*width, y: 0.5030416667*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        var _hole4 = Path()
        _hole4.move(to: CGPoint(x: 0.5*width, y: 0.125*height))
        _hole4.addLine(to: CGPoint(x: 0.875*width, y: 0.5030416667*height))
        _hole4.addLine(to: CGPoint(x: 0.7385833333*width, y: 0.640625*height))
        _hole4.addLine(to: CGPoint(x: 0.5*width, y: 0.3999166667*height))
        _hole4.closeSubpath()
        path.addReversedPath(_hole4)
        return path
    }
}