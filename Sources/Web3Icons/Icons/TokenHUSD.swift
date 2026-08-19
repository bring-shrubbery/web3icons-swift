// GENERATED FROM @web3icons/core@4.0.55 — DO NOT EDIT
import SwiftUI

internal struct TokenHUSD: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.78125*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.640625*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.640625*width, y: 0.6377916667*height))
        _hole2.addCurve(to: CGPoint(x: 0.5670416667*width, y: 0.5702916667*height), control1: CGPoint(x: 0.640625*width, y: 0.5997916667*height), control2: CGPoint(x: 0.6064583333*width, y: 0.5702916667*height))
        _hole2.addLine(to: CGPoint(x: 0.3615833333*width, y: 0.5702916667*height))
        _hole2.addCurve(to: CGPoint(x: 0.21875*width, y: 0.4312083333*height), control1: CGPoint(x: 0.28275*width, y: 0.5702916667*height), control2: CGPoint(x: 0.21875*width, y: 0.50725*height))
        _hole2.addLine(to: CGPoint(x: 0.21875*width, y: 0.1250833333*height))
        _hole2.addLine(to: CGPoint(x: 0.359375*width, y: 0.1250833333*height))
        _hole2.addLine(to: CGPoint(x: 0.359375*width, y: 0.3623333333*height))
        _hole2.addCurve(to: CGPoint(x: 0.4329583333*width, y: 0.4297083333*height), control1: CGPoint(x: 0.359375*width, y: 0.4003333333*height), control2: CGPoint(x: 0.3935416667*width, y: 0.4297083333*height))
        _hole2.addLine(to: CGPoint(x: 0.638375*width, y: 0.4297083333*height))
        _hole2.addCurve(to: CGPoint(x: 0.7811666667*width, y: 0.5689166667*height), control1: CGPoint(x: 0.7172083333*width, y: 0.42975*height), control2: CGPoint(x: 0.781125*width, y: 0.492875*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.359375*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.21875*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.21875*width, y: 0.640625*height))
        _hole2.addCurve(to: CGPoint(x: 0.359375*width, y: 0.7814166667*height), control1: CGPoint(x: 0.297625*width, y: 0.640625*height), control2: CGPoint(x: 0.359375*width, y: 0.7052916667*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.640625*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.78125*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.78125*width, y: 0.359375*height))
        _hole2.addCurve(to: CGPoint(x: 0.640625*width, y: 0.2187083333*height), control1: CGPoint(x: 0.7022916667*width, y: 0.359375*height), control2: CGPoint(x: 0.640625*width, y: 0.2947916667*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}