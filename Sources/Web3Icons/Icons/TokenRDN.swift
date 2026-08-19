// GENERATED FROM @web3icons/core@4.0.55 — DO NOT EDIT
import SwiftUI

internal struct TokenRDN: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.5872083333*width, y: 0.5416666667*height))
        _hole2.addCurve(to: CGPoint(x: 0.25*width, y: 0.125*height), control1: CGPoint(x: 0.58875*width, y: 0.3033333333*height), control2: CGPoint(x: 0.3630416667*width, y: 0.1645833333*height))
        _hole2.addLine(to: CGPoint(x: 0.567625*width, y: 0.125*height))
        _hole2.addCurve(to: CGPoint(x: 0.7499166667*width, y: 0.5416666667*height), control1: CGPoint(x: 0.7181666667*width, y: 0.2355833333*height), control2: CGPoint(x: 0.751875*width, y: 0.448875*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.3541666667*width, y: 0.4166666667*height))
        _hole2.addLine(to: CGPoint(x: 0.3541666667*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.5625*width, y: 0.7589583333*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}