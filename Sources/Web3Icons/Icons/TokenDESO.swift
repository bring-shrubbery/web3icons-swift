// GENERATED FROM @web3icons/core@4.0.51 — DO NOT EDIT
import SwiftUI

internal struct TokenDESO: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.8125*width, y: 0.5*height))
        _hole2.addLine(to: CGPoint(x: 0.8125*width, y: 0.66875*height))
        _hole2.addCurve(to: CGPoint(x: 0.57425*width, y: 0.875*height), control1: CGPoint(x: 0.8125*width, y: 0.7825*height), control2: CGPoint(x: 0.706*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.1875*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.6625*width, y: 0.5865*height))
        _hole2.addLine(to: CGPoint(x: 0.1875*width, y: 0.3125*height))
        _hole2.addLine(to: CGPoint(x: 0.1875*width, y: 0.125*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        var _hole4 = Path()
        _hole4.move(to: CGPoint(x: 0.57425*width, y: 0.125*height))
        _hole4.addCurve(to: CGPoint(x: 0.8125*width, y: 0.33125*height), control1: CGPoint(x: 0.70575*width, y: 0.125*height), control2: CGPoint(x: 0.8125*width, y: 0.21725*height))
        _hole4.addLine(to: CGPoint(x: 0.8125*width, y: 0.5*height))
        _hole4.addLine(to: CGPoint(x: 0.1875*width, y: 0.125*height))
        _hole4.closeSubpath()
        _hole4.move(to: CGPoint(x: 0.6625*width, y: 0.5865*height))
        _hole4.addLine(to: CGPoint(x: 0.1875*width, y: 0.875*height))
        _hole4.addLine(to: CGPoint(x: 0.1875*width, y: 0.68775*height))
        _hole4.addLine(to: CGPoint(x: 0.50875*width, y: 0.49775*height))
        _hole4.closeSubpath()
        path.addReversedPath(_hole4)
        return path
    }
}