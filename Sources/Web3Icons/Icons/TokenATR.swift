// GENERATED FROM @web3icons/core@4.0.55 — DO NOT EDIT
import SwiftUI

internal struct TokenATR: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.65*width, y: 0.50275*height))
        _hole2.addLine(to: CGPoint(x: 0.65*width, y: 0.5*height))
        _hole2.addCurve(to: CGPoint(x: 0.3875*width, y: 0.2375*height), control1: CGPoint(x: 0.65*width, y: 0.3550252532*height), control2: CGPoint(x: 0.5324747468*width, y: 0.2375*height))
        _hole2.addCurve(to: CGPoint(x: 0.125*width, y: 0.5*height), control1: CGPoint(x: 0.2425252532*width, y: 0.2375*height), control2: CGPoint(x: 0.125*width, y: 0.3550252532*height))
        _hole2.addCurve(to: CGPoint(x: 0.3875*width, y: 0.7625*height), control1: CGPoint(x: 0.125*width, y: 0.6449747468*height), control2: CGPoint(x: 0.2425252532*width, y: 0.7625*height))
        _hole2.addLine(to: CGPoint(x: 0.65*width, y: 0.7625*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        var _hole4 = Path()
        _hole4.move(to: CGPoint(x: 0.78125*width, y: 0.425*height))
        _hole4.addCurve(to: CGPoint(x: 0.6875*width, y: 0.33125*height), control1: CGPoint(x: 0.7294733047*width, y: 0.425*height), control2: CGPoint(x: 0.6875*width, y: 0.3830266953*height))
        _hole4.addCurve(to: CGPoint(x: 0.78125*width, y: 0.2375*height), control1: CGPoint(x: 0.6875*width, y: 0.2794733047*height), control2: CGPoint(x: 0.7294733047*width, y: 0.2375*height))
        _hole4.addCurve(to: CGPoint(x: 0.875*width, y: 0.33125*height), control1: CGPoint(x: 0.8330266953*width, y: 0.2375*height), control2: CGPoint(x: 0.875*width, y: 0.2794733047*height))
        _hole4.addCurve(to: CGPoint(x: 0.78125*width, y: 0.425*height), control1: CGPoint(x: 0.875*width, y: 0.3830266953*height), control2: CGPoint(x: 0.8330266953*width, y: 0.425*height))
        path.addReversedPath(_hole4)
        return path
    }
}