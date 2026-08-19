// GENERATED FROM @web3icons/core@4.0.55 — DO NOT EDIT
import SwiftUI

internal struct TokenVITE: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.125*width, y: 0.321875*height))
        _hole2.addLine(to: CGPoint(x: 0.359375*width, y: 0.265625*height))
        _hole2.addLine(to: CGPoint(x: 0.3359166667*width, y: 0.8515833333*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.40625*width, y: 0.258375*height))
        _hole2.addLine(to: CGPoint(x: 0.875*width, y: 0.1484583333*height))
        _hole2.addLine(to: CGPoint(x: 0.3429583333*width, y: 0.84475*height))
        _hole2.addLine(to: CGPoint(x: 0.40625*width, y: 0.2585833333*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}