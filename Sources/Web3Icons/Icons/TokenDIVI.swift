// GENERATED FROM @web3icons/core@4.0.55 — DO NOT EDIT
import SwiftUI

internal struct TokenDIVI: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.53575*width, y: 0.125*height))
        _hole2.addCurve(to: CGPoint(x: 0.875*width, y: 0.5*height), control1: CGPoint(x: 0.702*width, y: 0.125*height), control2: CGPoint(x: 0.875*width, y: 0.24725*height))
        _hole2.addCurve(to: CGPoint(x: 0.53575*width, y: 0.875*height), control1: CGPoint(x: 0.875*width, y: 0.75275*height), control2: CGPoint(x: 0.702*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.19525*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.19525*width, y: 0.4765*height))
        _hole2.addLine(to: CGPoint(x: 0.375*width, y: 0.4765*height))
        _hole2.addLine(to: CGPoint(x: 0.375*width, y: 0.7*height))
        _hole2.addLine(to: CGPoint(x: 0.526*width, y: 0.7*height))
        _hole2.addCurve(to: CGPoint(x: 0.69225*width, y: 0.5*height), control1: CGPoint(x: 0.60425*width, y: 0.7*height), control2: CGPoint(x: 0.69225*width, y: 0.601*height))
        _hole2.addCurve(to: CGPoint(x: 0.526*width, y: 0.3*height), control1: CGPoint(x: 0.69225*width, y: 0.399*height), control2: CGPoint(x: 0.60425*width, y: 0.3*height))
        _hole2.addLine(to: CGPoint(x: 0.33025*width, y: 0.3*height))
        _hole2.addCurve(to: CGPoint(x: 0.125*width, y: 0.125*height), control1: CGPoint(x: 0.2455*width, y: 0.3*height), control2: CGPoint(x: 0.17725*width, y: 0.24625*height))
        _hole2.addLine(to: CGPoint(x: 0.53575*width, y: 0.125*height))
        path.addReversedPath(_hole2)
        return path
    }
}