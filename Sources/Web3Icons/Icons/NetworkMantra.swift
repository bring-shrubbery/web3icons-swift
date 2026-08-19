// GENERATED FROM @web3icons/core@4.0.55 — DO NOT EDIT
import SwiftUI

internal struct NetworkMantra: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.5*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.5833333333*width, y: 0.205*height))
        _hole2.addLine(to: CGPoint(x: 0.5*width, y: 0.2841666667*height))
        _hole2.addLine(to: CGPoint(x: 0.4166666667*width, y: 0.205*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.4308333333*width, y: 0.4291666667*height))
        _hole2.addCurve(to: CGPoint(x: 0.5691666667*width, y: 0.4291666667*height), control1: CGPoint(x: 0.4691666667*width, y: 0.4658333333*height), control2: CGPoint(x: 0.5308333333*width, y: 0.4658333333*height))
        _hole2.addLine(to: CGPoint(x: 0.7916666667*width, y: 0.2083333333*height))
        _hole2.addLine(to: CGPoint(x: 0.875*width, y: 0.2708333333*height))
        _hole2.addLine(to: CGPoint(x: 0.875*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.7916666667*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.7916666667*width, y: 0.3508333333*height))
        _hole2.addLine(to: CGPoint(x: 0.6525*width, y: 0.4816666667*height))
        _hole2.addCurve(to: CGPoint(x: 0.5*width, y: 0.5416666667*height), control1: CGPoint(x: 0.6108333333*width, y: 0.5216666667*height), control2: CGPoint(x: 0.555*width, y: 0.5416666667*height))
        _hole2.addCurve(to: CGPoint(x: 0.3475*width, y: 0.4816666667*height), control1: CGPoint(x: 0.445*width, y: 0.5416666667*height), control2: CGPoint(x: 0.3891666667*width, y: 0.5216666667*height))
        _hole2.addLine(to: CGPoint(x: 0.2083333333*width, y: 0.35*height))
        _hole2.addLine(to: CGPoint(x: 0.2083333333*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.125*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.125*width, y: 0.2708333333*height))
        _hole2.addLine(to: CGPoint(x: 0.2083333333*width, y: 0.2083333333*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}