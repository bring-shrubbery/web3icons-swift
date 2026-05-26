// GENERATED FROM @web3icons/core@4.0.51 — DO NOT EDIT
import SwiftUI

internal struct TokenKDA: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.8482083333*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.6160833333*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.3779166667*width, y: 0.5357083333*height))
        _hole2.addLine(to: CGPoint(x: 0.4731666667*width, y: 0.3392916667*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.1517916667*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.3392916667*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.3392916667*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.1517916667*width, y: 0.875*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        var _hole4 = Path()
        _hole4.move(to: CGPoint(x: 0.3392916667*width, y: 0.6170833333*height))
        _hole4.addLine(to: CGPoint(x: 0.3392916667*width, y: 0.3827916667*height))
        _hole4.addLine(to: CGPoint(x: 0.5922916667*width, y: 0.125*height))
        _hole4.addLine(to: CGPoint(x: 0.8065416667*width, y: 0.125*height))
        _hole4.closeSubpath()
        path.addReversedPath(_hole4)
        return path
    }
}