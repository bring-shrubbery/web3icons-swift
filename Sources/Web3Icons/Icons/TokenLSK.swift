// GENERATED FROM @web3icons/core@4.0.51 — DO NOT EDIT
import SwiftUI

internal struct TokenLSK: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.43625*width, y: 0.2341666667*height))
        _hole2.addLine(to: CGPoint(x: 0.4975833333*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.8050416667*width, y: 0.6650416667*height))
        _hole2.addLine(to: CGPoint(x: 0.62775*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.4859583333*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.668*width, y: 0.65125*height))
        _hole2.addCurve(to: CGPoint(x: 0.43625*width, y: 0.2341666667*height), control1: CGPoint(x: 0.5903333333*width, y: 0.5125*height), control2: CGPoint(x: 0.51225*width, y: 0.373875*height))
        path.addReversedPath(_hole2)
        var _hole4 = Path()
        _hole4.move(to: CGPoint(x: 0.4214583333*width, y: 0.7575*height))
        _hole4.addLine(to: CGPoint(x: 0.5275833333*width, y: 0.7575*height))
        _hole4.addLine(to: CGPoint(x: 0.4309583333*width, y: 0.875*height))
        _hole4.addLine(to: CGPoint(x: 0.3717083333*width, y: 0.875*height))
        _hole4.addLine(to: CGPoint(x: 0.1949583333*width, y: 0.666125*height))
        _hole4.addLine(to: CGPoint(x: 0.4125*width, y: 0.2770833333*height))
        _hole4.addLine(to: CGPoint(x: 0.4780833333*width, y: 0.3889583333*height))
        _hole4.addLine(to: CGPoint(x: 0.331*width, y: 0.6517916667*height))
        _hole4.closeSubpath()
        path.addReversedPath(_hole4)
        return path
    }
}