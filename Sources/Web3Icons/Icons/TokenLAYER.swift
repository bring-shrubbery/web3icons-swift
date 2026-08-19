// GENERATED FROM @web3icons/core@4.0.55 — DO NOT EDIT
import SwiftUI

internal struct TokenLAYER: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.125*width, y: 0.1517916667*height))
        _hole2.addLine(to: CGPoint(x: 0.875*width, y: 0.1517916667*height))
        _hole2.addLine(to: CGPoint(x: 0.875*width, y: 0.3125*height))
        _hole2.addLine(to: CGPoint(x: 0.125*width, y: 0.3125*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.125*width, y: 0.419625*height))
        _hole2.addLine(to: CGPoint(x: 0.875*width, y: 0.419625*height))
        _hole2.addLine(to: CGPoint(x: 0.875*width, y: 0.580375*height))
        _hole2.addLine(to: CGPoint(x: 0.125*width, y: 0.580375*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.125*width, y: 0.6875*height))
        _hole2.addLine(to: CGPoint(x: 0.875*width, y: 0.6875*height))
        _hole2.addLine(to: CGPoint(x: 0.875*width, y: 0.8482083333*height))
        _hole2.addLine(to: CGPoint(x: 0.125*width, y: 0.8482083333*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}