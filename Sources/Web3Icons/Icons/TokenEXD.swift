// GENERATED FROM @web3icons/core@4.0.55 — DO NOT EDIT
import SwiftUI

internal struct TokenEXD: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.225*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.425*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.425*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.225*width, y: 0.875*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.775*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.45*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.775*width, y: 0.425*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.775*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.775*width, y: 0.575*height))
        _hole2.addLine(to: CGPoint(x: 0.45*width, y: 0.875*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}