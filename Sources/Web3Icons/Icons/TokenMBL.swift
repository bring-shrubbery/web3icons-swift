// GENERATED FROM @web3icons/core@4.0.51 — DO NOT EDIT
import SwiftUI

internal struct TokenMBL: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.125*width, y: 0.828125*height))
        _hole2.addLine(to: CGPoint(x: 0.125*width, y: 0.171875*height))
        _hole2.addLine(to: CGPoint(x: 0.546875*width, y: 0.2550833333*height))
        _hole2.addLine(to: CGPoint(x: 0.359375*width, y: 0.2890833333*height))
        _hole2.addLine(to: CGPoint(x: 0.1952916667*width, y: 0.2550833333*height))
        _hole2.addLine(to: CGPoint(x: 0.1952916667*width, y: 0.74375*height))
        _hole2.addLine(to: CGPoint(x: 0.359375*width, y: 0.7109166667*height))
        _hole2.addLine(to: CGPoint(x: 0.546875*width, y: 0.74375*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        var _hole4 = Path()
        _hole4.move(to: CGPoint(x: 0.875*width, y: 0.7578333333*height))
        _hole4.addLine(to: CGPoint(x: 0.359375*width, y: 0.6633333333*height))
        _hole4.addLine(to: CGPoint(x: 0.359375*width, y: 0.3408333333*height))
        _hole4.addLine(to: CGPoint(x: 0.875*width, y: 0.2422083333*height))
        _hole4.closeSubpath()
        path.addReversedPath(_hole4)
        return path
    }
}