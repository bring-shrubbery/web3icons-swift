// GENERATED FROM @web3icons/core@4.0.51 — DO NOT EDIT
import SwiftUI

internal struct TokenBLOX: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.4765416667*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.125*width, y: 0.6999583333*height))
        _hole2.addLine(to: CGPoint(x: 0.125*width, y: 0.3249583333*height))
        _hole2.addLine(to: CGPoint(x: 0.4765416667*width, y: 0.4749583333*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.849875*width, y: 0.275*height))
        _hole2.addLine(to: CGPoint(x: 0.5*width, y: 0.425*height))
        _hole2.addLine(to: CGPoint(x: 0.1500833333*width, y: 0.275*height))
        _hole2.addLine(to: CGPoint(x: 0.5*width, y: 0.125*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.875*width, y: 0.6999166667*height))
        _hole2.addLine(to: CGPoint(x: 0.5234583333*width, y: 0.8749583333*height))
        _hole2.addLine(to: CGPoint(x: 0.5234583333*width, y: 0.4749166667*height))
        _hole2.addLine(to: CGPoint(x: 0.875*width, y: 0.3125*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}