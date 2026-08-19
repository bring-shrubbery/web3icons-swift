// GENERATED FROM @web3icons/core@4.0.55 — DO NOT EDIT
import SwiftUI

internal struct NetworkLoopring: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.3747083333*width, y: 0.2132083333*height))
        _hole2.addLine(to: CGPoint(x: 0.3747083333*width, y: 0.7866666667*height))
        _hole2.addLine(to: CGPoint(x: 0.125*width, y: 0.5829166667*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.3747083333*width, y: 0.7867916667*height))
        _hole2.addLine(to: CGPoint(x: 0.6102916667*width, y: 0.5830833333*height))
        _hole2.addLine(to: CGPoint(x: 0.54175*width, y: 0.4755*height))
        _hole2.addLine(to: CGPoint(x: 0.875*width, y: 0.4755*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}