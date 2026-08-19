// GENERATED FROM @web3icons/core@4.0.55 — DO NOT EDIT
import SwiftUI

internal struct TokenTRB: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.8740833333*width, y: 0.3221666667*height))
        _hole2.addCurve(to: CGPoint(x: 0.1722083333*width, y: 0.73175*height), control1: CGPoint(x: 0.8995*width, y: 0.4230833333*height), control2: CGPoint(x: 0.3990833333*width, y: 0.6724583333*height))
        _hole2.addCurve(to: CGPoint(x: 0.584875*width, y: 0.397875*height), control1: CGPoint(x: -0.054625*width, y: 0.791*height), control2: CGPoint(x: 0.610875*width, y: 0.49875*height))
        _hole2.addCurve(to: CGPoint(x: 0.2552916667*width, y: 0.320375*height), control1: CGPoint(x: 0.5589166667*width, y: 0.2969166667*height), control2: CGPoint(x: 0.0285*width, y: 0.3796666667*height))
        _hole2.addCurve(to: CGPoint(x: 0.8740416667*width, y: 0.3221666667*height), control1: CGPoint(x: 0.4821666667*width, y: 0.261125*height), control2: CGPoint(x: 0.848625*width, y: 0.2212083333*height))
        path.addReversedPath(_hole2)
        return path
    }
}