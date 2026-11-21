// GENERATED FROM @web3icons/core@4.0.61 — DO NOT EDIT
import SwiftUI

internal struct WalletLobstr: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.5*width, y: 0.875*height))
        _hole2.addCurve(to: CGPoint(x: 0.1797083333*width, y: 0.5936666667*height), control1: CGPoint(x: 0.311375*width, y: 0.875*height), control2: CGPoint(x: 0.1797083333*width, y: 0.7592916667*height))
        _hole2.addCurve(to: CGPoint(x: 0.5609583333*width, y: 0.125*height), control1: CGPoint(x: 0.1797083333*width, y: 0.436875*height), control2: CGPoint(x: 0.35875*width, y: 0.1789583333*height))
        _hole2.addCurve(to: CGPoint(x: 0.417*width, y: 0.3149583333*height), control1: CGPoint(x: 0.515125*width, y: 0.17075*height), control2: CGPoint(x: 0.4520833333*width, y: 0.2397083333*height))
        _hole2.addCurve(to: CGPoint(x: 0.3667916667*width, y: 0.6037083333*height), control1: CGPoint(x: 0.3672083333*width, y: 0.4216666667*height), control2: CGPoint(x: 0.3624166667*width, y: 0.5845416667*height))
        _hole2.addLine(to: CGPoint(x: 0.3738333333*width, y: 0.634625*height))
        _hole2.addLine(to: CGPoint(x: 0.4037083333*width, y: 0.6230416667*height))
        _hole2.addCurve(to: CGPoint(x: 0.4962083333*width, y: 0.569625*height), control1: CGPoint(x: 0.4370372374*width, y: 0.609957478*height), control2: CGPoint(x: 0.4682169011*width, y: 0.5919519245*height))
        _hole2.addQuadCurve(to: CGPoint(x: 0.5480833333*width, y: 0.520875*height), control: CGPoint(x: 0.52425*width, y: 0.5474583333*height))
        _hole2.addCurve(to: CGPoint(x: 0.6599166667*width, y: 0.27475*height), control1: CGPoint(x: 0.6122083333*width, y: 0.4497083333*height), control2: CGPoint(x: 0.65325*width, y: 0.357625*height))
        _hole2.addCurve(to: CGPoint(x: 0.8203333333*width, y: 0.5935833333*height), control1: CGPoint(x: 0.7512083333*width, y: 0.3357083333*height), control2: CGPoint(x: 0.8203333333*width, y: 0.4687083333*height))
        _hole2.addCurve(to: CGPoint(x: 0.5*width, y: 0.875*height), control1: CGPoint(x: 0.8203333333*width, y: 0.759375*height), control2: CGPoint(x: 0.6885833333*width, y: 0.875*height))
        path.addReversedPath(_hole2)
        return path
    }
}