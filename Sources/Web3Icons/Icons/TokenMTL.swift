// GENERATED FROM @web3icons/core@4.0.51 — DO NOT EDIT
import SwiftUI

internal struct TokenMTL: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.125*width, y: 0.171875*height))
        _hole2.addLine(to: CGPoint(x: 0.171875*width, y: 0.171875*height))
        _hole2.addLine(to: CGPoint(x: 0.171875*width, y: 0.828125*height))
        _hole2.addLine(to: CGPoint(x: 0.125*width, y: 0.828125*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.359375*width, y: 0.3125*height))
        _hole2.addLine(to: CGPoint(x: 0.40625*width, y: 0.3125*height))
        _hole2.addLine(to: CGPoint(x: 0.40625*width, y: 0.734375*height))
        _hole2.addLine(to: CGPoint(x: 0.359375*width, y: 0.734375*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.59375*width, y: 0.40625*height))
        _hole2.addLine(to: CGPoint(x: 0.640625*width, y: 0.40625*height))
        _hole2.addLine(to: CGPoint(x: 0.640625*width, y: 0.640625*height))
        _hole2.addLine(to: CGPoint(x: 0.59375*width, y: 0.640625*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.828125*width, y: 0.171875*height))
        _hole2.addLine(to: CGPoint(x: 0.875*width, y: 0.171875*height))
        _hole2.addLine(to: CGPoint(x: 0.875*width, y: 0.828125*height))
        _hole2.addLine(to: CGPoint(x: 0.828125*width, y: 0.828125*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}