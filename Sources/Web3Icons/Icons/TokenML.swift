// GENERATED FROM @web3icons/core@4.0.51 — DO NOT EDIT
import SwiftUI

internal struct TokenML: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.125*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.275*width, y: 0.188*height))
        _hole2.addLine(to: CGPoint(x: 0.275*width, y: 0.81575*height))
        _hole2.addLine(to: CGPoint(x: 0.125*width, y: 0.875*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.325*width, y: 0.425*height))
        _hole2.addLine(to: CGPoint(x: 0.475*width, y: 0.488*height))
        _hole2.addLine(to: CGPoint(x: 0.475*width, y: 0.74075*height))
        _hole2.addLine(to: CGPoint(x: 0.325*width, y: 0.8*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.875*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.725*width, y: 0.812*height))
        _hole2.addLine(to: CGPoint(x: 0.725*width, y: 0.18425*height))
        _hole2.addLine(to: CGPoint(x: 0.875*width, y: 0.125*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.675*width, y: 0.575*height))
        _hole2.addLine(to: CGPoint(x: 0.525*width, y: 0.512*height))
        _hole2.addLine(to: CGPoint(x: 0.525*width, y: 0.25925*height))
        _hole2.addLine(to: CGPoint(x: 0.675*width, y: 0.2*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}