// GENERATED FROM @web3icons/core@4.0.55 — DO NOT EDIT
import SwiftUI

internal struct TokenDEL: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.8*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.2*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.2*width, y: 0.725*height))
        _hole2.addLine(to: CGPoint(x: 0.625*width, y: 0.725*height))
        _hole2.addLine(to: CGPoint(x: 0.625*width, y: 0.275*height))
        _hole2.addLine(to: CGPoint(x: 0.2*width, y: 0.275*height))
        _hole2.addLine(to: CGPoint(x: 0.2*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.8*width, y: 0.125*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.475*width, y: 0.575*height))
        _hole2.addLine(to: CGPoint(x: 0.2*width, y: 0.575*height))
        _hole2.addLine(to: CGPoint(x: 0.2*width, y: 0.425*height))
        _hole2.addLine(to: CGPoint(x: 0.475*width, y: 0.425*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}