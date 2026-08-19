// GENERATED FROM @web3icons/core@4.0.55 — DO NOT EDIT
import SwiftUI

internal struct TokenWAMPL: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.875*width, y: 0.8625*height))
        _hole2.addLine(to: CGPoint(x: 0.6*width, y: 0.8625*height))
        _hole2.addLine(to: CGPoint(x: 0.6*width, y: 0.8375*height))
        _hole2.addCurve(to: CGPoint(x: 0.64075*width, y: 0.7505*height), control1: CGPoint(x: 0.6625*width, y: 0.82625*height), control2: CGPoint(x: 0.65625*width, y: 0.7925*height))
        _hole2.addLine(to: CGPoint(x: 0.475*width, y: 0.275*height))
        _hole2.addCurve(to: CGPoint(x: 0.275*width, y: 0.775*height), control1: CGPoint(x: 0.4125*width, y: 0.41025*height), control2: CGPoint(x: 0.275*width, y: 0.719*height))
        _hole2.addCurve(to: CGPoint(x: 0.375*width, y: 0.8375*height), control1: CGPoint(x: 0.275*width, y: 0.831*height), control2: CGPoint(x: 0.35*width, y: 0.8375*height))
        _hole2.addLine(to: CGPoint(x: 0.375*width, y: 0.8625*height))
        _hole2.addLine(to: CGPoint(x: 0.125*width, y: 0.8625*height))
        _hole2.addLine(to: CGPoint(x: 0.125*width, y: 0.8375*height))
        _hole2.addCurve(to: CGPoint(x: 0.2345*width, y: 0.7505*height), control1: CGPoint(x: 0.175*width, y: 0.8375*height), control2: CGPoint(x: 0.21875*width, y: 0.7785*height))
        _hole2.addLine(to: CGPoint(x: 0.5*width, y: 0.1375*height))
        _hole2.addCurve(to: CGPoint(x: 0.71875*width, y: 0.6945*height), control1: CGPoint(x: 0.5575*width, y: 0.26825*height), control2: CGPoint(x: 0.68125*width, y: 0.5825*height))
        _hole2.addCurve(to: CGPoint(x: 0.875*width, y: 0.8375*height), control1: CGPoint(x: 0.75625*width, y: 0.8065*height), control2: CGPoint(x: 0.83875*width, y: 0.8375*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}