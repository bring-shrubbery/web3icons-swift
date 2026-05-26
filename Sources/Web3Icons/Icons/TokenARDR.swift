// GENERATED FROM @web3icons/core@4.0.51 — DO NOT EDIT
import SwiftUI

internal struct TokenARDR: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.4955*width, y: 0.600125*height))
        _hole2.addLine(to: CGPoint(x: 0.561875*width, y: 0.686125*height))
        _hole2.addLine(to: CGPoint(x: 0.36875*width, y: 0.8164166667*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.5*width, y: 0.1835833333*height))
        _hole2.addLine(to: CGPoint(x: 0.602375*width, y: 0.35*height))
        _hole2.addLine(to: CGPoint(x: 0.329375*width, y: 0.8164166667*height))
        _hole2.addLine(to: CGPoint(x: 0.125*width, y: 0.8164166667*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.5*width, y: 0.5498333333*height))
        _hole2.addLine(to: CGPoint(x: 0.6365*width, y: 0.450125*height))
        _hole2.addLine(to: CGPoint(x: 0.875*width, y: 0.816375*height))
        _hole2.addLine(to: CGPoint(x: 0.70475*width, y: 0.816375*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}