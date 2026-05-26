// GENERATED FROM @web3icons/core@4.0.51 — DO NOT EDIT
import SwiftUI

internal struct TokenVSTA: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.125*width, y: 0.5*height))
        _hole2.addCurve(to: CGPoint(x: 0.5*width, y: 0.125*height), control1: CGPoint(x: 0.125*width, y: 0.2928932188*height), control2: CGPoint(x: 0.2928932188*width, y: 0.125*height))
        _hole2.addCurve(to: CGPoint(x: 0.875*width, y: 0.5*height), control1: CGPoint(x: 0.7071067812*width, y: 0.125*height), control2: CGPoint(x: 0.875*width, y: 0.2928932188*height))
        _hole2.addCurve(to: CGPoint(x: 0.5*width, y: 0.875*height), control1: CGPoint(x: 0.875*width, y: 0.7071067812*height), control2: CGPoint(x: 0.7071067812*width, y: 0.875*height))
        _hole2.addCurve(to: CGPoint(x: 0.125*width, y: 0.5*height), control1: CGPoint(x: 0.2928932188*width, y: 0.875*height), control2: CGPoint(x: 0.125*width, y: 0.7071067812*height))
        _hole2.move(to: CGPoint(x: 0.1911666667*width, y: 0.5*height))
        _hole2.addCurve(to: CGPoint(x: 0.5*width, y: 0.8088333333*height), control1: CGPoint(x: 0.1911666667*width, y: 0.6705639402*height), control2: CGPoint(x: 0.3294360598*width, y: 0.8088333333*height))
        _hole2.addCurve(to: CGPoint(x: 0.8088333333*width, y: 0.5*height), control1: CGPoint(x: 0.6705639402*width, y: 0.8088333333*height), control2: CGPoint(x: 0.8088333333*width, y: 0.6705639402*height))
        _hole2.addCurve(to: CGPoint(x: 0.6544166678*width, y: 0.2325424846*height), control1: CGPoint(x: 0.8088333347*width, y: 0.3896644761*height), control2: CGPoint(x: 0.7499700342*width, y: 0.287710247*height))
        _hole2.addCurve(to: CGPoint(x: 0.3455833322*width, y: 0.2325424846*height), control1: CGPoint(x: 0.5588633013*width, y: 0.1773747223*height), control2: CGPoint(x: 0.4411366987*width, y: 0.1773747223*height))
        _hole2.addCurve(to: CGPoint(x: 0.1911666667*width, y: 0.5*height), control1: CGPoint(x: 0.2500299658*width, y: 0.287710247*height), control2: CGPoint(x: 0.1911666653*width, y: 0.3896644761*height))
        path.addReversedPath(_hole2)
        var _hole4 = Path()
        _hole4.move(to: CGPoint(x: 0.5015*width, y: 0.8088333333*height))
        _hole4.addLine(to: CGPoint(x: 0.23525*width, y: 0.3235416667*height))
        _hole4.addLine(to: CGPoint(x: 0.4999583333*width, y: 0.3235416667*height))
        _hole4.addLine(to: CGPoint(x: 0.6322916667*width, y: 0.5662083333*height))
        _hole4.closeSubpath()
        path.addReversedPath(_hole4)
        var _hole6 = Path()
        _hole6.move(to: CGPoint(x: 0.632375*width, y: 0.5662083333*height))
        _hole6.addLine(to: CGPoint(x: 0.5*width, y: 0.3235416667*height))
        _hole6.addLine(to: CGPoint(x: 0.7647083333*width, y: 0.3235416667*height))
        _hole6.closeSubpath()
        path.addReversedPath(_hole6)
        return path
    }
}