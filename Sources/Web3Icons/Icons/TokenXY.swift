// GENERATED FROM @web3icons/core@4.0.51 — DO NOT EDIT
import SwiftUI

internal struct TokenXY: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.125*width, y: 0.7460833333*height))
        _hole2.addLine(to: CGPoint(x: 0.3827916667*width, y: 0.4648333333*height))
        _hole2.addLine(to: CGPoint(x: 0.1952916667*width, y: 0.2539166667*height))
        _hole2.addLine(to: CGPoint(x: 0.453125*width, y: 0.2539166667*height))
        _hole2.addLine(to: CGPoint(x: 0.5234583333*width, y: 0.3242083333*height))
        _hole2.addLine(to: CGPoint(x: 0.6875*width, y: 0.1601666667*height))
        _hole2.addLine(to: CGPoint(x: 0.875*width, y: 0.1601666667*height))
        _hole2.addLine(to: CGPoint(x: 0.2421666667*width, y: 0.8398333333*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.5351666667*width, y: 0.6054583333*height))
        _hole2.addLine(to: CGPoint(x: 0.59375*width, y: 0.6757916667*height))
        _hole2.addLine(to: CGPoint(x: 0.8632916667*width, y: 0.6757916667*height))
        _hole2.addLine(to: CGPoint(x: 0.6757916667*width, y: 0.4648333333*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}