// GENERATED FROM @web3icons/core@4.0.55 — DO NOT EDIT
import SwiftUI

internal struct TokenFORE: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.2155*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.7845*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.7845*width, y: 0.2801666667*height))
        _hole2.addLine(to: CGPoint(x: 0.2155*width, y: 0.2801666667*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.2155*width, y: 0.4612083333*height))
        _hole2.addLine(to: CGPoint(x: 0.73275*width, y: 0.4612083333*height))
        _hole2.addLine(to: CGPoint(x: 0.73275*width, y: 0.616375*height))
        _hole2.addLine(to: CGPoint(x: 0.3706666667*width, y: 0.616375*height))
        _hole2.addLine(to: CGPoint(x: 0.3706666667*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.2155416667*width, y: 0.875*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}