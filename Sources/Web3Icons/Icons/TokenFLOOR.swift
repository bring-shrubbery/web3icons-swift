// GENERATED FROM @web3icons/core@4.0.51 — DO NOT EDIT
import SwiftUI

internal struct TokenFLOOR: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.125*width, y: 0.455875*height))
        _hole2.addLine(to: CGPoint(x: 0.875*width, y: 0.455875*height))
        _hole2.addLine(to: CGPoint(x: 0.875*width, y: 0.544125*height))
        _hole2.addLine(to: CGPoint(x: 0.125*width, y: 0.544125*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}