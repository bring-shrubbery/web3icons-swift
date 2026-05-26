// GENERATED FROM @web3icons/core@4.0.51 — DO NOT EDIT
import SwiftUI

internal struct TokenIMO: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.5661666667*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.21325*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.21325*width, y: 0.45675*height))
        _hole2.addLine(to: CGPoint(x: 0.5661666667*width, y: 0.125*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.6764583333*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.6764583333*width, y: 0.35575*height))
        _hole2.addLine(to: CGPoint(x: 0.78675*width, y: 0.4710833333*height))
        _hole2.addLine(to: CGPoint(x: 0.78675*width, y: 0.875*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}