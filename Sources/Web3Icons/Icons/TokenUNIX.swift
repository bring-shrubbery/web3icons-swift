// GENERATED FROM @web3icons/core@4.0.51 — DO NOT EDIT
import SwiftUI

internal struct TokenUNIX: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.5*width, y: 0.875*height))
        _hole2.addCurve(to: CGPoint(x: 0.15*width, y: 0.53475*height), control1: CGPoint(x: 0.278*width, y: 0.875*height), control2: CGPoint(x: 0.15*width, y: 0.75975*height))
        _hole2.addLine(to: CGPoint(x: 0.15*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.35*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.35*width, y: 0.528*height))
        _hole2.addCurve(to: CGPoint(x: 0.5*width, y: 0.7*height), control1: CGPoint(x: 0.35*width, y: 0.628*height), control2: CGPoint(x: 0.38875*width, y: 0.7*height))
        _hole2.addCurve(to: CGPoint(x: 0.65*width, y: 0.528*height), control1: CGPoint(x: 0.61075*width, y: 0.7*height), control2: CGPoint(x: 0.65*width, y: 0.627*height))
        _hole2.addLine(to: CGPoint(x: 0.65*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.85*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.85*width, y: 0.53475*height))
        _hole2.addCurve(to: CGPoint(x: 0.5*width, y: 0.875*height), control1: CGPoint(x: 0.85*width, y: 0.75975*height), control2: CGPoint(x: 0.722*width, y: 0.875*height))
        path.addReversedPath(_hole2)
        var _hole4 = Path()
        _hole4.move(to: CGPoint(x: 0.5*width, y: 0.675*height))
        _hole4.addCurve(to: CGPoint(x: 0.375*width, y: 0.55*height), control1: CGPoint(x: 0.4309644063*width, y: 0.675*height), control2: CGPoint(x: 0.375*width, y: 0.6190355937*height))
        _hole4.addCurve(to: CGPoint(x: 0.5*width, y: 0.425*height), control1: CGPoint(x: 0.375*width, y: 0.4809644063*height), control2: CGPoint(x: 0.4309644063*width, y: 0.425*height))
        _hole4.addCurve(to: CGPoint(x: 0.625*width, y: 0.55*height), control1: CGPoint(x: 0.5690355937*width, y: 0.425*height), control2: CGPoint(x: 0.625*width, y: 0.4809644063*height))
        _hole4.addCurve(to: CGPoint(x: 0.5*width, y: 0.675*height), control1: CGPoint(x: 0.625*width, y: 0.6190355937*height), control2: CGPoint(x: 0.5690355937*width, y: 0.675*height))
        path.addReversedPath(_hole4)
        return path
    }
}