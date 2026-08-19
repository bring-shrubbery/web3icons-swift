// GENERATED FROM @web3icons/core@4.0.55 — DO NOT EDIT
import SwiftUI

internal struct NetworkLyra: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.125*width, y: 0.6042083333*height))
        _hole2.addLine(to: CGPoint(x: 0.7680416667*width, y: 0.6042083333*height))
        _hole2.addLine(to: CGPoint(x: 0.875*width, y: 0.8375*height))
        _hole2.addLine(to: CGPoint(x: 0.2299166667*width, y: 0.8375*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.1865833333*width, y: 0.5452916667*height))
        _hole2.addLine(to: CGPoint(x: 0.5718333333*width, y: 0.1625*height))
        _hole2.addLine(to: CGPoint(x: 0.68575*width, y: 0.4176666667*height))
        _hole2.addLine(to: CGPoint(x: 0.55175*width, y: 0.5452916667*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}