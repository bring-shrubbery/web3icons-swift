// GENERATED FROM @web3icons/core@4.0.55 — DO NOT EDIT
import SwiftUI

internal struct TokenXVG: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.8145833333*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.5*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.1855*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.28225*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.5*width, y: 0.65725*height))
        _hole2.addLine(to: CGPoint(x: 0.71775*width, y: 0.125*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        var _hole4 = Path()
        _hole4.move(to: CGPoint(x: 0.3790416667*width, y: 0.125*height))
        _hole4.addLine(to: CGPoint(x: 0.6209583333*width, y: 0.125*height))
        _hole4.addLine(to: CGPoint(x: 0.5*width, y: 0.4047916667*height))
        _hole4.closeSubpath()
        path.addReversedPath(_hole4)
        return path
    }
}