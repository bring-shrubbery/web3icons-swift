// GENERATED FROM @web3icons/core@4.0.55 — DO NOT EDIT
import SwiftUI

internal struct TokenPROPC: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.125*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.6205416667*width, y: 0.125*height))
        _hole2.addCurve(to: CGPoint(x: 0.875*width, y: 0.3794583333*height), control1: CGPoint(x: 0.7610751236*width, y: 0.125*height), control2: CGPoint(x: 0.875*width, y: 0.2389248764*height))
        _hole2.addCurve(to: CGPoint(x: 0.6205416667*width, y: 0.6339166667*height), control1: CGPoint(x: 0.875*width, y: 0.5199917903*height), control2: CGPoint(x: 0.7610751236*width, y: 0.6339166667*height))
        _hole2.addLine(to: CGPoint(x: 0.3660833333*width, y: 0.6339166667*height))
        _hole2.addLine(to: CGPoint(x: 0.3660833333*width, y: 0.3660833333*height))
        _hole2.addLine(to: CGPoint(x: 0.125*width, y: 0.3660833333*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.3660833333*width, y: 0.6339166667*height))
        _hole2.addLine(to: CGPoint(x: 0.3660833333*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.125*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.125*width, y: 0.6339166667*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}