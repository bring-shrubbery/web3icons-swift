// GENERATED FROM @web3icons/core@4.0.55 — DO NOT EDIT
import SwiftUI

internal struct TokenRBIF: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.2422083333*width, y: 0.875*height))
        _hole2.addCurve(to: CGPoint(x: 0.400375*width, y: 0.125*height), control1: CGPoint(x: 0.3863333333*width, y: 0.76225*height), control2: CGPoint(x: 0.407875*width, y: 0.3279583333*height))
        _hole2.addLine(to: CGPoint(x: 0.453125*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.453125*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.2422083333*width, y: 0.875*height))
        _hole2.move(to: CGPoint(x: 0.7578333333*width, y: 0.875*height))
        _hole2.addCurve(to: CGPoint(x: 0.599625*width, y: 0.125*height), control1: CGPoint(x: 0.6136666667*width, y: 0.76225*height), control2: CGPoint(x: 0.592125*width, y: 0.3279583333*height))
        _hole2.addLine(to: CGPoint(x: 0.546875*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.546875*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.7578333333*width, y: 0.875*height))
        path.addReversedPath(_hole2)
        return path
    }
}