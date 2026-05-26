// GENERATED FROM @web3icons/core@4.0.51 — DO NOT EDIT
import SwiftUI

internal struct NetworkKroma: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.875*width, y: 0.3802083333*height))
        _hole2.addLine(to: CGPoint(x: 0.6875*width, y: 0.5*height))
        _hole2.addLine(to: CGPoint(x: 0.5*width, y: 0.3802083333*height))
        _hole2.addLine(to: CGPoint(x: 0.3125*width, y: 0.5*height))
        _hole2.addLine(to: CGPoint(x: 0.125*width, y: 0.3802083333*height))
        _hole2.addLine(to: CGPoint(x: 0.5*width, y: 0.140625*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        var _hole4 = Path()
        _hole4.move(to: CGPoint(x: 0.875*width, y: 0.6197916667*height))
        _hole4.addLine(to: CGPoint(x: 0.5*width, y: 0.859375*height))
        _hole4.addLine(to: CGPoint(x: 0.125*width, y: 0.6197916667*height))
        _hole4.addLine(to: CGPoint(x: 0.125*width, y: 0.3802083333*height))
        _hole4.addLine(to: CGPoint(x: 0.5*width, y: 0.6197916667*height))
        _hole4.addLine(to: CGPoint(x: 0.875*width, y: 0.3802083333*height))
        _hole4.closeSubpath()
        path.addReversedPath(_hole4)
        return path
    }
}