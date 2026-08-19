// GENERATED FROM @web3icons/core@4.0.55 — DO NOT EDIT
import SwiftUI

internal struct NetworkTelos: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.5*width, y: 0.75*height))
        _hole2.addCurve(to: CGPoint(x: 0.25*width, y: 0.5*height), control1: CGPoint(x: 0.3619288125*width, y: 0.75*height), control2: CGPoint(x: 0.25*width, y: 0.6380711875*height))
        _hole2.addCurve(to: CGPoint(x: 0.5*width, y: 0.25*height), control1: CGPoint(x: 0.25*width, y: 0.3619288125*height), control2: CGPoint(x: 0.3619288125*width, y: 0.25*height))
        _hole2.addCurve(to: CGPoint(x: 0.75*width, y: 0.5*height), control1: CGPoint(x: 0.6380711875*width, y: 0.25*height), control2: CGPoint(x: 0.75*width, y: 0.3619288125*height))
        _hole2.addCurve(to: CGPoint(x: 0.5*width, y: 0.75*height), control1: CGPoint(x: 0.75*width, y: 0.6380711875*height), control2: CGPoint(x: 0.6380711875*width, y: 0.75*height))
        _hole2.move(to: CGPoint(x: 0.5*width, y: 0.875*height))
        _hole2.addCurve(to: CGPoint(x: 0.875*width, y: 0.5*height), control1: CGPoint(x: 0.7071067812*width, y: 0.875*height), control2: CGPoint(x: 0.875*width, y: 0.7071067812*height))
        _hole2.addCurve(to: CGPoint(x: 0.5*width, y: 0.125*height), control1: CGPoint(x: 0.875*width, y: 0.2928932188*height), control2: CGPoint(x: 0.7071067812*width, y: 0.125*height))
        _hole2.addCurve(to: CGPoint(x: 0.125*width, y: 0.5*height), control1: CGPoint(x: 0.2928932188*width, y: 0.125*height), control2: CGPoint(x: 0.125*width, y: 0.2928932188*height))
        _hole2.addCurve(to: CGPoint(x: 0.5*width, y: 0.875*height), control1: CGPoint(x: 0.125*width, y: 0.7071067812*height), control2: CGPoint(x: 0.2928932188*width, y: 0.875*height))
        path.addReversedPath(_hole2)
        return path
    }
}