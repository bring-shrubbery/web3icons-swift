// GENERATED FROM @web3icons/core@4.0.51 — DO NOT EDIT
import SwiftUI

internal struct TokenBMC: Shape {
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
        _hole2.move(to: CGPoint(x: 0.4786666667*width, y: 0.8047083333*height))
        _hole2.addCurve(to: CGPoint(x: 0.78125*width, y: 0.5*height), control1: CGPoint(x: 0.644375*width, y: 0.8047083333*height), control2: CGPoint(x: 0.78125*width, y: 0.6657083333*height))
        _hole2.addCurve(to: CGPoint(x: 0.4786666667*width, y: 0.1953333333*height), control1: CGPoint(x: 0.78125*width, y: 0.3342916667*height), control2: CGPoint(x: 0.644375*width, y: 0.1953333333*height))
        _hole2.addCurve(to: CGPoint(x: 0.171875*width, y: 0.5*height), control1: CGPoint(x: 0.310732972*width, y: 0.1969588125*height), control2: CGPoint(x: 0.1746676651*width, y: 0.3320816597*height))
        _hole2.addCurve(to: CGPoint(x: 0.4786666667*width, y: 0.8047083333*height), control1: CGPoint(x: 0.171875*width, y: 0.6657083333*height), control2: CGPoint(x: 0.3129583333*width, y: 0.8047083333*height))
        path.addReversedPath(_hole2)
        return path
    }
}