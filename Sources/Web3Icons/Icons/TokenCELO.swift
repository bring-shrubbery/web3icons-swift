// GENERATED FROM @web3icons/core@4.0.55 — DO NOT EDIT
import SwiftUI

internal struct TokenCELO: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.125*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.875*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.875*width, y: 0.392875*height))
        _hole2.addLine(to: CGPoint(x: 0.745375*width, y: 0.392875*height))
        _hole2.addCurve(to: CGPoint(x: 0.4451795427*width, y: 0.2378384859*height), control1: CGPoint(x: 0.6946382455*width, y: 0.276638637*height), control2: CGPoint(x: 0.5693307203*width, y: 0.2119233276*height))
        _hole2.addCurve(to: CGPoint(x: 0.2320738178*width, y: 0.5000208333*height), control1: CGPoint(x: 0.321028365*width, y: 0.2637536442*height), control2: CGPoint(x: 0.2320738178*width, y: 0.373193745*height))
        _hole2.addCurve(to: CGPoint(x: 0.4451795427*width, y: 0.7622031808*height), control1: CGPoint(x: 0.2320738178*width, y: 0.6268479217*height), control2: CGPoint(x: 0.321028365*width, y: 0.7362880225*height))
        _hole2.addCurve(to: CGPoint(x: 0.745375*width, y: 0.6071666667*height), control1: CGPoint(x: 0.5693307203*width, y: 0.7881183391*height), control2: CGPoint(x: 0.6946382455*width, y: 0.7234030297*height))
        _hole2.addLine(to: CGPoint(x: 0.875*width, y: 0.6071666667*height))
        _hole2.addLine(to: CGPoint(x: 0.875*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.125*width, y: 0.875*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}