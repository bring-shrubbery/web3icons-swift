// GENERATED FROM @web3icons/core@4.0.51 — DO NOT EDIT
import SwiftUI

internal struct TokenKAU: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.7782083333*width, y: 0.7782083333*height))
        _hole2.addCurve(to: CGPoint(x: 0.875*width, y: 0.875*height), control1: CGPoint(x: 0.8054452591*width, y: 0.8151353936*height), control2: CGPoint(x: 0.8380729398*width, y: 0.8477630743*height))
        _hole2.addLine(to: CGPoint(x: 0.6475416667*width, y: 0.875*height))
        _hole2.addCurve(to: CGPoint(x: 0.563375*width, y: 0.833875*height), control1: CGPoint(x: 0.6145570803*width, y: 0.8753916521*height), control2: CGPoint(x: 0.5833363537*width, y: 0.8601367724*height))
        _hole2.addLine(to: CGPoint(x: 0.3669166667*width, y: 0.5362916667*height))
        _hole2.addLine(to: CGPoint(x: 0.5120833333*width, y: 0.391125*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.125*width, y: 0.7540416667*height))
        _hole2.addLine(to: CGPoint(x: 0.34275*width, y: 0.5457083333*height))
        _hole2.addLine(to: CGPoint(x: 0.34275*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.125*width, y: 0.125*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.5604166667*width, y: 0.3185416667*height))
        _hole2.addLine(to: CGPoint(x: 0.7540416667*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.5605*width, y: 0.125*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}