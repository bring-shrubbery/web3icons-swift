// GENERATED FROM @web3icons/core@4.0.51 — DO NOT EDIT
import SwiftUI

internal struct TokenSAI: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.5*width, y: 0.875*height))
        _hole2.addCurve(to: CGPoint(x: 0.8393801312*width, y: 0.6596084755*height), control1: CGPoint(x: 0.645302207*width, y: 0.8750164063*height), control2: CGPoint(x: 0.7775362284*width, y: 0.7910925556*height))
        _hole2.addCurve(to: CGPoint(x: 0.788875*width, y: 0.2608333333*height), control1: CGPoint(x: 0.901224034*width, y: 0.5281243954*height), control2: CGPoint(x: 0.8815455202*width, y: 0.3727480612*height))
        _hole2.addLine(to: CGPoint(x: 0.2608333333*width, y: 0.7889166667*height))
        _hole2.addCurve(to: CGPoint(x: 0.5*width, y: 0.875*height), control1: CGPoint(x: 0.328049983*width, y: 0.8446719379*height), control2: CGPoint(x: 0.4126689536*width, y: 0.8751288705*height))
        _hole2.move(to: CGPoint(x: 0.213125*width, y: 0.7415*height))
        _hole2.addLine(to: CGPoint(x: 0.7415*width, y: 0.213125*height))
        _hole2.addCurve(to: CGPoint(x: 0.5*width, y: 0.125*height), control1: CGPoint(x: 0.6739711819*width, y: 0.156086266*height), control2: CGPoint(x: 0.588394222*width, y: 0.1248586486*height))
        _hole2.addCurve(to: CGPoint(x: 0.125*width, y: 0.5*height), control1: CGPoint(x: 0.2928932188*width, y: 0.125*height), control2: CGPoint(x: 0.125*width, y: 0.2928932188*height))
        _hole2.addCurve(to: CGPoint(x: 0.213125*width, y: 0.7415*height), control1: CGPoint(x: 0.125*width, y: 0.592*height), control2: CGPoint(x: 0.158125*width, y: 0.67625*height))
        path.addReversedPath(_hole2)
        return path
    }
}