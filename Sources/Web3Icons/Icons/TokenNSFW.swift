// GENERATED FROM @web3icons/core@4.0.51 — DO NOT EDIT
import SwiftUI

internal struct TokenNSFW: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.125*width, y: 0.4375*height))
        _hole2.addLine(to: CGPoint(x: 0.5*width, y: 0.4375*height))
        _hole2.addLine(to: CGPoint(x: 0.5*width, y: 0.7916666667*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.875*width, y: 0.4375*height))
        _hole2.addLine(to: CGPoint(x: 0.5*width, y: 0.4375*height))
        _hole2.addLine(to: CGPoint(x: 0.5*width, y: 0.7916666667*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.875*width, y: 0.4375*height))
        _hole2.addLine(to: CGPoint(x: 0.5*width, y: 0.4375*height))
        _hole2.addLine(to: CGPoint(x: 0.6979166667*width, y: 0.2083333333*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.125*width, y: 0.4375*height))
        _hole2.addLine(to: CGPoint(x: 0.5*width, y: 0.4375*height))
        _hole2.addLine(to: CGPoint(x: 0.3020833333*width, y: 0.2083333333*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        var _hole4 = Path()
        _hole4.move(to: CGPoint(x: 0.5*width, y: 0.4375*height))
        _hole4.addLine(to: CGPoint(x: 0.5*width, y: 0.299375*height))
        _hole4.addLine(to: CGPoint(x: 0.6979166667*width, y: 0.2083333333*height))
        _hole4.closeSubpath()
        _hole4.move(to: CGPoint(x: 0.5*width, y: 0.4375*height))
        _hole4.addLine(to: CGPoint(x: 0.5*width, y: 0.299375*height))
        _hole4.addLine(to: CGPoint(x: 0.3020833333*width, y: 0.2083333333*height))
        _hole4.closeSubpath()
        path.addReversedPath(_hole4)
        return path
    }
}