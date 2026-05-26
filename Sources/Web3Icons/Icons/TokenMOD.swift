// GENERATED FROM @web3icons/core@4.0.51 — DO NOT EDIT
import SwiftUI

internal struct TokenMOD: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.78125*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.78125*width, y: 0.7041666667*height))
        _hole2.addLine(to: CGPoint(x: 0.4959166667*width, y: 0.414*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        var _hole4 = Path()
        _hole4.move(to: CGPoint(x: 0.21875*width, y: 0.1291666667*height))
        _hole4.addLine(to: CGPoint(x: 0.2315*width, y: 0.1420833333*height))
        _hole4.addLine(to: CGPoint(x: 0.5855833333*width, y: 0.5017916667*height))
        _hole4.addLine(to: CGPoint(x: 0.21875*width, y: 0.875*height))
        _hole4.closeSubpath()
        path.addReversedPath(_hole4)
        return path
    }
}