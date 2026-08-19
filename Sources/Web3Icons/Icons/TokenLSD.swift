// GENERATED FROM @web3icons/core@4.0.55 — DO NOT EDIT
import SwiftUI

internal struct TokenLSD: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.7885*width, y: 0.875*height))
        _hole2.addCurve(to: CGPoint(x: 0.4885*width, y: 0.6640416667*height), control1: CGPoint(x: 0.65375*width, y: 0.7245416667*height), control2: CGPoint(x: 0.56725*width, y: 0.6640416667*height))
        _hole2.addCurve(to: CGPoint(x: 0.2689166667*width, y: 0.78125*height), control1: CGPoint(x: 0.4189166667*width, y: 0.6640416667*height), control2: CGPoint(x: 0.3549166667*width, y: 0.712375*height))
        _hole2.addLine(to: CGPoint(x: 0.228125*width, y: 0.734375*height))
        _hole2.addCurve(to: CGPoint(x: 0.1601666667*width, y: 0.2679166667*height), control1: CGPoint(x: 0.3525833333*width, y: 0.5304166667*height), control2: CGPoint(x: 0.2836666667*width, y: 0.4350833333*height))
        _hole2.addLine(to: CGPoint(x: 0.2007083333*width, y: 0.2187083333*height))
        _hole2.addCurve(to: CGPoint(x: 0.7444583333*width, y: 0.125*height), control1: CGPoint(x: 0.3991666667*width, y: 0.3429583333*height), control2: CGPoint(x: 0.5424166667*width, y: 0.4029583333*height))
        _hole2.addLine(to: CGPoint(x: 0.794625*width, y: 0.1596666667*height))
        _hole2.addCurve(to: CGPoint(x: 0.726625*width, y: 0.448*height), control1: CGPoint(x: 0.7446666667*width, y: 0.2702916667*height), control2: CGPoint(x: 0.7254583333*width, y: 0.36175*height))
        _hole2.addCurve(to: CGPoint(x: 0.8398333333*width, y: 0.8382083333*height), control1: CGPoint(x: 0.7282916667*width, y: 0.5745416667*height), control2: CGPoint(x: 0.77725*width, y: 0.6898333333*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}