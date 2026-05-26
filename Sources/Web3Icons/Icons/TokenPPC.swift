// GENERATED FROM @web3icons/core@4.0.51 — DO NOT EDIT
import SwiftUI

internal struct TokenPPC: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.1953333333*width, y: 0.125*height))
        _hole2.addCurve(to: CGPoint(x: 0.78075*width, y: 0.7158333333*height), control1: CGPoint(x: 0.6869166667*width, y: 0.14375*height), control2: CGPoint(x: 0.87625*width, y: 0.4458333333*height))
        _hole2.addCurve(to: CGPoint(x: 0.6649166667*width, y: 0.875*height), control1: CGPoint(x: 0.7619099102*width, y: 0.7807873201*height), control2: CGPoint(x: 0.7209295487*width, y: 0.8370984642*height))
        _hole2.addCurve(to: CGPoint(x: 0.671875*width, y: 0.8420833333*height), control1: CGPoint(x: 0.6674166667*width, y: 0.8641666667*height), control2: CGPoint(x: 0.6702083333*width, y: 0.8533333333*height))
        _hole2.addCurve(to: CGPoint(x: 0.3102916667*width, y: 0.2383333333*height), control1: CGPoint(x: 0.707625*width, y: 0.6316666667*height), control2: CGPoint(x: 0.6401666667*width, y: 0.3783333333*height))
        _hole2.addCurve(to: CGPoint(x: 0.5560416667*width, y: 0.8683333333*height), control1: CGPoint(x: 0.5727083333*width, y: 0.39875*height), control2: CGPoint(x: 0.67875*width, y: 0.6841666667*height))
        _hole2.addCurve(to: CGPoint(x: 0.1953333333*width, y: 0.50875*height), control1: CGPoint(x: 0.3476666667*width, y: 0.9016666667*height), control2: CGPoint(x: 0.1953333333*width, y: 0.7191666667*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}