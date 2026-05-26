// GENERATED FROM @web3icons/core@4.0.51 — DO NOT EDIT
import SwiftUI

internal struct TokenNEO: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.4669166667*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.180125*width, y: 0.755875*height))
        _hole2.addLine(to: CGPoint(x: 0.180125*width, y: 0.2595833333*height))
        _hole2.addLine(to: CGPoint(x: 0.5624166667*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.8156666667*width, y: 0.2427916667*height))
        _hole2.addLine(to: CGPoint(x: 0.4669166667*width, y: 0.3676666667*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        var _hole4 = Path()
        _hole4.move(to: CGPoint(x: 0.819875*width, y: 0.742625*height))
        _hole4.addLine(to: CGPoint(x: 0.4889583333*width, y: 0.60675*height))
        _hole4.addLine(to: CGPoint(x: 0.4889583333*width, y: 0.3861666667*height))
        _hole4.addLine(to: CGPoint(x: 0.819875*width, y: 0.2630416667*height))
        _hole4.closeSubpath()
        path.addReversedPath(_hole4)
        return path
    }
}