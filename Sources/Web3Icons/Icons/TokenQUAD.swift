// GENERATED FROM @web3icons/core@4.0.55 — DO NOT EDIT
import SwiftUI

internal struct TokenQUAD: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.8*width, y: 0.747*height))
        _hole2.addLine(to: CGPoint(x: 0.675*width, y: 0.622*height))
        _hole2.addLine(to: CGPoint(x: 0.675*width, y: 0.325*height))
        _hole2.addLine(to: CGPoint(x: 0.325*width, y: 0.325*height))
        _hole2.addLine(to: CGPoint(x: 0.325*width, y: 0.675*height))
        _hole2.addLine(to: CGPoint(x: 0.622*width, y: 0.675*height))
        _hole2.addLine(to: CGPoint(x: 0.747*width, y: 0.8*height))
        _hole2.addLine(to: CGPoint(x: 0.2*width, y: 0.8*height))
        _hole2.addLine(to: CGPoint(x: 0.2*width, y: 0.2*height))
        _hole2.addLine(to: CGPoint(x: 0.8*width, y: 0.2*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.125*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.125*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.875*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.875*width, y: 0.125*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.4*width, y: 0.6*height))
        _hole2.addLine(to: CGPoint(x: 0.6*width, y: 0.6*height))
        _hole2.addLine(to: CGPoint(x: 0.6*width, y: 0.4*height))
        _hole2.addLine(to: CGPoint(x: 0.4*width, y: 0.4*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}