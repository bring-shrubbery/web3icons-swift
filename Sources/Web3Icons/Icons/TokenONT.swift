// GENERATED FROM @web3icons/core@4.0.51 — DO NOT EDIT
import SwiftUI

internal struct TokenONT: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.125*width, y: 0.4537916667*height))
        _hole2.addLine(to: CGPoint(x: 0.125*width, y: 0.141125*height))
        _hole2.addLine(to: CGPoint(x: 0.74375*width, y: 0.7795*height))
        _hole2.addCurve(to: CGPoint(x: 0.39275*width, y: 0.8605833333*height), control1: CGPoint(x: 0.731*width, y: 0.7902916667*height), control2: CGPoint(x: 0.5765*width, y: 0.917*height))
        _hole2.addCurve(to: CGPoint(x: 0.125375*width, y: 0.4534166667*height), control1: CGPoint(x: 0.232625*width, y: 0.8114166667*height), control2: CGPoint(x: 0.119375*width, y: 0.64475*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.873875*width, y: 0.5475416667*height))
        _hole2.addLine(to: CGPoint(x: 0.875*width, y: 0.857875*height))
        _hole2.addLine(to: CGPoint(x: 0.254375*width, y: 0.2214166667*height))
        _hole2.addCurve(to: CGPoint(x: 0.605*width, y: 0.1392083333*height), control1: CGPoint(x: 0.267125*width, y: 0.2102916667*height), control2: CGPoint(x: 0.421625*width, y: 0.083125*height))
        _hole2.addCurve(to: CGPoint(x: 0.873875*width, y: 0.547125*height), control1: CGPoint(x: 0.7655*width, y: 0.187625*height), control2: CGPoint(x: 0.879875*width, y: 0.3550416667*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}