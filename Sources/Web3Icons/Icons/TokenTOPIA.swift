// GENERATED FROM @web3icons/core@4.0.55 — DO NOT EDIT
import SwiftUI

internal struct TokenTOPIA: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.15*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.425*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.425*width, y: 0.375*height))
        _hole2.addLine(to: CGPoint(x: 0.575*width, y: 0.375*height))
        _hole2.addLine(to: CGPoint(x: 0.575*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.85*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.85*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.575*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.575*width, y: 0.625*height))
        _hole2.addLine(to: CGPoint(x: 0.425*width, y: 0.625*height))
        _hole2.addLine(to: CGPoint(x: 0.425*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.15*width, y: 0.875*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}