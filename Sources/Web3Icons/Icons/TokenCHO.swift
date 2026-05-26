// GENERATED FROM @web3icons/core@4.0.51 — DO NOT EDIT
import SwiftUI

internal struct TokenCHO: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.875*width, y: 0.5*height))
        _hole2.addCurve(to: CGPoint(x: 0.5*width, y: 0.875*height), control1: CGPoint(x: 0.875*width, y: 0.7071067812*height), control2: CGPoint(x: 0.7071067812*width, y: 0.875*height))
        _hole2.addCurve(to: CGPoint(x: 0.125*width, y: 0.5*height), control1: CGPoint(x: 0.2928932188*width, y: 0.875*height), control2: CGPoint(x: 0.125*width, y: 0.7071067812*height))
        _hole2.addCurve(to: CGPoint(x: 0.5*width, y: 0.125*height), control1: CGPoint(x: 0.125*width, y: 0.2928932188*height), control2: CGPoint(x: 0.2928932188*width, y: 0.125*height))
        _hole2.addCurve(to: CGPoint(x: 0.875*width, y: 0.5*height), control1: CGPoint(x: 0.7071067812*width, y: 0.125*height), control2: CGPoint(x: 0.875*width, y: 0.2928932188*height))
        _hole2.move(to: CGPoint(x: 0.3014583333*width, y: 0.5*height))
        _hole2.addCurve(to: CGPoint(x: 0.5*width, y: 0.6544166667*height), control1: CGPoint(x: 0.3014583333*width, y: 0.555125*height), control2: CGPoint(x: 0.3418333333*width, y: 0.6544166667*height))
        _hole2.addCurve(to: CGPoint(x: 0.6985416667*width, y: 0.5*height), control1: CGPoint(x: 0.6506666667*width, y: 0.6544166667*height), control2: CGPoint(x: 0.6985416667*width, y: 0.5551666667*height))
        _hole2.addCurve(to: CGPoint(x: 0.5*width, y: 0.3455833333*height), control1: CGPoint(x: 0.6985416667*width, y: 0.4448333333*height), control2: CGPoint(x: 0.6544166667*width, y: 0.3455833333*height))
        _hole2.addCurve(to: CGPoint(x: 0.3014583333*width, y: 0.5*height), control1: CGPoint(x: 0.345625*width, y: 0.3455833333*height), control2: CGPoint(x: 0.3014583333*width, y: 0.4448333333*height))
        path.addReversedPath(_hole2)
        return path
    }
}