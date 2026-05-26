// GENERATED FROM @web3icons/core@4.0.51 — DO NOT EDIT
import SwiftUI

internal struct WalletTrust: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.1625*width, y: 0.2333333333*height))
        _hole2.addLine(to: CGPoint(x: 0.5*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.5*width, y: 0.875*height))
        _hole2.addCurve(to: CGPoint(x: 0.1625*width, y: 0.475*height), control1: CGPoint(x: 0.2589166667*width, y: 0.775*height), control2: CGPoint(x: 0.1625*width, y: 0.5833333333*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.8375*width, y: 0.2333333333*height))
        _hole2.addLine(to: CGPoint(x: 0.5*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.5*width, y: 0.875*height))
        _hole2.addCurve(to: CGPoint(x: 0.8375*width, y: 0.475*height), control1: CGPoint(x: 0.7410833333*width, y: 0.775*height), control2: CGPoint(x: 0.8375*width, y: 0.5833333333*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}