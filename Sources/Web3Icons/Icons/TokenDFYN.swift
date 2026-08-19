// GENERATED FROM @web3icons/core@4.0.55 — DO NOT EDIT
import SwiftUI

internal struct TokenDFYN: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.4395833333*width, y: 0.5535833333*height))
        _hole2.addLine(to: CGPoint(x: 0.2214166667*width, y: 0.5535833333*height))
        _hole2.addLine(to: CGPoint(x: 0.3285833333*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.5012916667*width, y: 0.125*height))
        _hole2.addCurve(to: CGPoint(x: 0.6523333333*width, y: 0.2758333333*height), control1: CGPoint(x: 0.5878333333*width, y: 0.125*height), control2: CGPoint(x: 0.6455*width, y: 0.2034166667*height))
        _hole2.addCurve(to: CGPoint(x: 0.61525*width, y: 0.4464166667*height), control1: CGPoint(x: 0.6577083333*width, y: 0.33375*height), control2: CGPoint(x: 0.6298333333*width, y: 0.4145*height))
        _hole2.addLine(to: CGPoint(x: 0.7785833333*width, y: 0.4464166667*height))
        _hole2.addLine(to: CGPoint(x: 0.3600833333*width, y: 0.875*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}