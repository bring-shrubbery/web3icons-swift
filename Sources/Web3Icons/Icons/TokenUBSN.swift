// GENERATED FROM @web3icons/core@4.0.55 — DO NOT EDIT
import SwiftUI

internal struct TokenUBSN: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.578125*width, y: 0.609375*height))
        _hole2.addLine(to: CGPoint(x: 0.328125*width, y: 0.453125*height))
        _hole2.addLine(to: CGPoint(x: 0.328125*width, y: 0.390625*height))
        _hole2.addLine(to: CGPoint(x: 0.578125*width, y: 0.546875*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        var _hole4 = Path()
        _hole4.move(to: CGPoint(x: 0.328125*width, y: 0.390625*height))
        _hole4.addLine(to: CGPoint(x: 0.875*width, y: 0.390625*height))
        _hole4.addLine(to: CGPoint(x: 0.875*width, y: 0.453125*height))
        _hole4.addLine(to: CGPoint(x: 0.328125*width, y: 0.453125*height))
        _hole4.closeSubpath()
        _hole4.move(to: CGPoint(x: 0.578125*width, y: 0.609375*height))
        _hole4.addLine(to: CGPoint(x: 0.125*width, y: 0.609375*height))
        _hole4.addLine(to: CGPoint(x: 0.125*width, y: 0.546875*height))
        _hole4.addLine(to: CGPoint(x: 0.578125*width, y: 0.546875*height))
        _hole4.closeSubpath()
        path.addReversedPath(_hole4)
        return path
    }
}