// GENERATED FROM @web3icons/core@4.0.51 — DO NOT EDIT
import SwiftUI

internal struct TokenTGT: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.5344583333*width, y: 0.4864166667*height))
        _hole2.addLine(to: CGPoint(x: 0.3504166667*width, y: 0.3185833333*height))
        _hole2.addLine(to: CGPoint(x: 0.8633333333*width, y: 0.125*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.7186666667*width, y: 0.6544583333*height))
        _hole2.addLine(to: CGPoint(x: 0.1367083333*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.5344583333*width, y: 0.4864166667*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}