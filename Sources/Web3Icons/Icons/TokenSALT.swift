// GENERATED FROM @web3icons/core@4.0.55 — DO NOT EDIT
import SwiftUI

internal struct TokenSALT: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.5*width, y: 0.3552083333*height))
        _hole2.addLine(to: CGPoint(x: 0.7069166667*width, y: 0.7715416667*height))
        _hole2.addLine(to: CGPoint(x: 0.2932083333*width, y: 0.7715416667*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.5*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.1379166667*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.8620833333*width, y: 0.875*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}