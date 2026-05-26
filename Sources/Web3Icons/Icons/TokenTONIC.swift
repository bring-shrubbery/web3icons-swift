// GENERATED FROM @web3icons/core@4.0.51 — DO NOT EDIT
import SwiftUI

internal struct TokenTONIC: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.15*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.6*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.6*width, y: 0.325*height))
        _hole2.addLine(to: CGPoint(x: 0.15*width, y: 0.325*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.65*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.85*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.85*width, y: 0.325*height))
        _hole2.addLine(to: CGPoint(x: 0.65*width, y: 0.325*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.6*width, y: 0.375*height))
        _hole2.addLine(to: CGPoint(x: 0.4*width, y: 0.375*height))
        _hole2.addLine(to: CGPoint(x: 0.4*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.6*width, y: 0.875*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}