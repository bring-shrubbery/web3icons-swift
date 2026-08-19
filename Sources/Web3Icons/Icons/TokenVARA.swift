// GENERATED FROM @web3icons/core@4.0.55 — DO NOT EDIT
import SwiftUI

internal struct TokenVARA: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.5*width, y: 0.125*height))
        _hole2.addCurve(to: CGPoint(x: 0.875*width, y: 0.5*height), control1: CGPoint(x: 0.7071067812*width, y: 0.125*height), control2: CGPoint(x: 0.875*width, y: 0.2928932188*height))
        _hole2.addCurve(to: CGPoint(x: 0.5*width, y: 0.875*height), control1: CGPoint(x: 0.875*width, y: 0.7071067812*height), control2: CGPoint(x: 0.7071067812*width, y: 0.875*height))
        _hole2.addCurve(to: CGPoint(x: 0.125*width, y: 0.5*height), control1: CGPoint(x: 0.2928932188*width, y: 0.875*height), control2: CGPoint(x: 0.125*width, y: 0.7071067812*height))
        _hole2.addCurve(to: CGPoint(x: 0.5*width, y: 0.125*height), control1: CGPoint(x: 0.125*width, y: 0.2928932188*height), control2: CGPoint(x: 0.2928932188*width, y: 0.125*height))
        _hole2.move(to: CGPoint(x: 0.4392916667*width, y: 0.3125*height))
        _hole2.addLine(to: CGPoint(x: 0.5986666667*width, y: 0.5489583333*height))
        _hole2.addLine(to: CGPoint(x: 0.5986666667*width, y: 0.6391666667*height))
        _hole2.addLine(to: CGPoint(x: 0.3785*width, y: 0.3125*height))
        _hole2.addLine(to: CGPoint(x: 0.3125*width, y: 0.3125*height))
        _hole2.addLine(to: CGPoint(x: 0.5657083333*width, y: 0.688125*height))
        _hole2.addLine(to: CGPoint(x: 0.664625*width, y: 0.688125*height))
        _hole2.addLine(to: CGPoint(x: 0.664625*width, y: 0.3125*height))
        _hole2.addLine(to: CGPoint(x: 0.5986666667*width, y: 0.3125*height))
        _hole2.addLine(to: CGPoint(x: 0.5986666667*width, y: 0.4510833333*height))
        _hole2.addLine(to: CGPoint(x: 0.5052916667*width, y: 0.3125*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}