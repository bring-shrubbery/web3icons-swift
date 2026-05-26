// GENERATED FROM @web3icons/core@4.0.51 — DO NOT EDIT
import SwiftUI

internal struct NetworkMonad: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.5*width, y: 0.125*height))
        _hole2.addCurve(to: CGPoint(x: 0.875*width, y: 0.5*height), control1: CGPoint(x: 0.6082916667*width, y: 0.125*height), control2: CGPoint(x: 0.875*width, y: 0.3917083333*height))
        _hole2.addCurve(to: CGPoint(x: 0.5*width, y: 0.875*height), control1: CGPoint(x: 0.875*width, y: 0.6082916667*height), control2: CGPoint(x: 0.6082916667*width, y: 0.875*height))
        _hole2.addCurve(to: CGPoint(x: 0.125*width, y: 0.5*height), control1: CGPoint(x: 0.3917083333*width, y: 0.875*height), control2: CGPoint(x: 0.125*width, y: 0.6083333333*height))
        _hole2.addCurve(to: CGPoint(x: 0.5*width, y: 0.125*height), control1: CGPoint(x: 0.125*width, y: 0.3916666667*height), control2: CGPoint(x: 0.3917083333*width, y: 0.125*height))
        _hole2.move(to: CGPoint(x: 0.4415416667*width, y: 0.7144166667*height))
        _hole2.addCurve(to: CGPoint(x: 0.7144166667*width, y: 0.5584583333*height), control1: CGPoint(x: 0.4872083333*width, y: 0.726875*height), control2: CGPoint(x: 0.702*width, y: 0.6040833333*height))
        _hole2.addCurve(to: CGPoint(x: 0.5584583333*width, y: 0.2855833333*height), control1: CGPoint(x: 0.726875*width, y: 0.5127916667*height), control2: CGPoint(x: 0.6040833333*width, y: 0.298*height))
        _hole2.addCurve(to: CGPoint(x: 0.2855833333*width, y: 0.4415416667*height), control1: CGPoint(x: 0.5127916667*width, y: 0.273125*height), control2: CGPoint(x: 0.2980416667*width, y: 0.395875*height))
        _hole2.addCurve(to: CGPoint(x: 0.4415833333*width, y: 0.7144166667*height), control1: CGPoint(x: 0.273125*width, y: 0.4872083333*height), control2: CGPoint(x: 0.395875*width, y: 0.702*height))
        path.addReversedPath(_hole2)
        return path
    }
}