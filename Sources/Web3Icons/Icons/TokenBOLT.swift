// GENERATED FROM @web3icons/core@4.0.51 — DO NOT EDIT
import SwiftUI

internal struct TokenBOLT: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.3*width, y: 0.7165*height))
        _hole2.addLine(to: CGPoint(x: 0.3*width, y: 0.3598333333*height))
        _hole2.addLine(to: CGPoint(x: 0.52*width, y: 0.5433333333*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        var _hole4 = Path()
        _hole4.move(to: CGPoint(x: 0.6297916667*width, y: 0.3269166667*height))
        _hole4.addLine(to: CGPoint(x: 0.6875*width, y: 0.658625*height))
        _hole4.addLine(to: CGPoint(x: 0.125*width, y: 0.875*height))
        _hole4.addLine(to: CGPoint(x: 0.54325*width, y: 0.5432916667*height))
        _hole4.addLine(to: CGPoint(x: 0.3*width, y: 0.3413333333*height))
        _hole4.addLine(to: CGPoint(x: 0.875*width, y: 0.125*height))
        _hole4.closeSubpath()
        path.addReversedPath(_hole4)
        return path
    }
}