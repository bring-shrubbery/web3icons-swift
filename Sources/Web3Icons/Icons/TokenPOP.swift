// GENERATED FROM @web3icons/core@4.0.55 — DO NOT EDIT
import SwiftUI

internal struct TokenPOP: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.25625*width, y: 0.575*height))
        _hole2.addLine(to: CGPoint(x: 0.78125*width, y: 0.575*height))
        _hole2.addLine(to: CGPoint(x: 0.78125*width, y: 0.35*height))
        _hole2.addLine(to: CGPoint(x: 0.875*width, y: 0.35*height))
        _hole2.addLine(to: CGPoint(x: 0.875*width, y: 0.65*height))
        _hole2.addLine(to: CGPoint(x: 0.25625*width, y: 0.65*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.21875*width, y: 0.65*height))
        _hole2.addLine(to: CGPoint(x: 0.125*width, y: 0.65*height))
        _hole2.addLine(to: CGPoint(x: 0.125*width, y: 0.35*height))
        _hole2.addLine(to: CGPoint(x: 0.74375*width, y: 0.35*height))
        _hole2.addLine(to: CGPoint(x: 0.74375*width, y: 0.425*height))
        _hole2.addLine(to: CGPoint(x: 0.21875*width, y: 0.425*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.74375*width, y: 0.5375*height))
        _hole2.addLine(to: CGPoint(x: 0.74375*width, y: 0.4625*height))
        _hole2.addLine(to: CGPoint(x: 0.25625*width, y: 0.4625*height))
        _hole2.addLine(to: CGPoint(x: 0.25625*width, y: 0.5375*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}