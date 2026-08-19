// GENERATED FROM @web3icons/core@4.0.55 — DO NOT EDIT
import SwiftUI

internal struct TokenPSP: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.125*width, y: 0.1953333333*height))
        _hole2.addLine(to: CGPoint(x: 0.453125*width, y: 0.1953333333*height))
        _hole2.addLine(to: CGPoint(x: 0.2895416667*width, y: 0.4765833333*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.1789166667*width, y: 0.8047083333*height))
        _hole2.addLine(to: CGPoint(x: 0.875*width, y: 0.8047083333*height))
        _hole2.addLine(to: CGPoint(x: 0.526*width, y: 0.1953333333*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.523*width, y: 0.359375*height))
        _hole2.addLine(to: CGPoint(x: 0.7184166667*width, y: 0.7109583333*height))
        _hole2.addLine(to: CGPoint(x: 0.3284166667*width, y: 0.7109583333*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}