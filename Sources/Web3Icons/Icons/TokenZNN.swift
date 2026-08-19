// GENERATED FROM @web3icons/core@4.0.55 — DO NOT EDIT
import SwiftUI

internal struct TokenZNN: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.265625*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.734375*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.734375*width, y: 0.215*height))
        _hole2.addLine(to: CGPoint(x: 0.4482083333*width, y: 0.40625*height))
        _hole2.addLine(to: CGPoint(x: 0.734375*width, y: 0.40625*height))
        _hole2.addLine(to: CGPoint(x: 0.734375*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.6495416667*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.359375*width, y: 0.6265833333*height))
        _hole2.addLine(to: CGPoint(x: 0.359375*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.265625*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.265625*width, y: 0.4034166667*height))
        _hole2.addLine(to: CGPoint(x: 0.5588333333*width, y: 0.21875*height))
        _hole2.addLine(to: CGPoint(x: 0.265625*width, y: 0.21875*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.640625*width, y: 0.734375*height))
        _hole2.addLine(to: CGPoint(x: 0.640625*width, y: 0.5*height))
        _hole2.addLine(to: CGPoint(x: 0.359375*width, y: 0.5*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}