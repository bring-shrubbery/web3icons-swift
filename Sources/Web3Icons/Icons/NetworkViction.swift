// GENERATED FROM @web3icons/core@4.0.55 — DO NOT EDIT
import SwiftUI

internal struct NetworkViction: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.875*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.875*width, y: 0.4495*height))
        _hole2.addCurve(to: CGPoint(x: 0.5*width, y: 0.4962916667*height), control1: CGPoint(x: 0.7524396262*width, y: 0.4806702601*height), control2: CGPoint(x: 0.626461934*width, y: 0.4963894766*height))
        _hole2.addCurve(to: CGPoint(x: 0.125*width, y: 0.4495*height), control1: CGPoint(x: 0.3705*width, y: 0.4962916667*height), control2: CGPoint(x: 0.2448333333*width, y: 0.4800416667*height))
        _hole2.addLine(to: CGPoint(x: 0.125*width, y: 0.125*height))
        _hole2.addCurve(to: CGPoint(x: 0.5*width, y: 0.1717916667*height), control1: CGPoint(x: 0.2475603738*width, y: 0.1561702601*height), control2: CGPoint(x: 0.373538066*width, y: 0.1718894766*height))
        _hole2.addCurve(to: CGPoint(x: 0.875*width, y: 0.125*height), control1: CGPoint(x: 0.6295*width, y: 0.1717916667*height), control2: CGPoint(x: 0.7551666667*width, y: 0.1555416667*height))
        _hole2.move(to: CGPoint(x: 0.125*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.125*width, y: 0.5505*height))
        _hole2.addCurve(to: CGPoint(x: 0.5*width, y: 0.5037083333*height), control1: CGPoint(x: 0.2475603738*width, y: 0.5193297399*height), control2: CGPoint(x: 0.373538066*width, y: 0.5036105234*height))
        _hole2.addCurve(to: CGPoint(x: 0.875*width, y: 0.5505*height), control1: CGPoint(x: 0.6295*width, y: 0.5037083333*height), control2: CGPoint(x: 0.7551666667*width, y: 0.5199583333*height))
        _hole2.addLine(to: CGPoint(x: 0.875*width, y: 0.875*height))
        _hole2.addCurve(to: CGPoint(x: 0.5*width, y: 0.8282083333*height), control1: CGPoint(x: 0.7524396262*width, y: 0.8438297399*height), control2: CGPoint(x: 0.626461934*width, y: 0.8281105234*height))
        _hole2.addCurve(to: CGPoint(x: 0.125*width, y: 0.875*height), control1: CGPoint(x: 0.3705*width, y: 0.8282083333*height), control2: CGPoint(x: 0.2448333333*width, y: 0.8444583333*height))
        path.addReversedPath(_hole2)
        return path
    }
}