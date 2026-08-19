// GENERATED FROM @web3icons/core@4.0.55 — DO NOT EDIT
import SwiftUI

internal struct TokenOXEN: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.5*width, y: 0.5*height))
        _hole2.addLine(to: CGPoint(x: 0.125*width, y: 0.175*height))
        _hole2.addLine(to: CGPoint(x: 0.875*width, y: 0.175*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.5*width, y: 0.5*height))
        _hole2.addLine(to: CGPoint(x: 0.125*width, y: 0.825*height))
        _hole2.addLine(to: CGPoint(x: 0.875*width, y: 0.825*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}