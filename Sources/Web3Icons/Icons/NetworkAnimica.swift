// GENERATED FROM @web3icons/core@4.0.56 — DO NOT EDIT
import SwiftUI

internal struct NetworkAnimica: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.5*width, y: 0.125*height))
        _hole2.addCurve(to: CGPoint(x: 0.125*width, y: 0.5*height), control1: CGPoint(x: 0.2928932188*width, y: 0.125*height), control2: CGPoint(x: 0.125*width, y: 0.2928932188*height))
        _hole2.addCurve(to: CGPoint(x: 0.5*width, y: 0.875*height), control1: CGPoint(x: 0.125*width, y: 0.7071067812*height), control2: CGPoint(x: 0.2928932188*width, y: 0.875*height))
        _hole2.addCurve(to: CGPoint(x: 0.875*width, y: 0.5*height), control1: CGPoint(x: 0.7071067812*width, y: 0.875*height), control2: CGPoint(x: 0.875*width, y: 0.7071067812*height))
        _hole2.addCurve(to: CGPoint(x: 0.5*width, y: 0.125*height), control1: CGPoint(x: 0.875*width, y: 0.2928932188*height), control2: CGPoint(x: 0.7071067812*width, y: 0.125*height))
        _hole2.move(to: CGPoint(x: 0.5*width, y: 0.1986666667*height))
        _hole2.addCurve(to: CGPoint(x: 0.1986666667*width, y: 0.5*height), control1: CGPoint(x: 0.3335781954*width, y: 0.1986666667*height), control2: CGPoint(x: 0.1986666667*width, y: 0.3335781954*height))
        _hole2.addCurve(to: CGPoint(x: 0.5*width, y: 0.8013333333*height), control1: CGPoint(x: 0.1986666667*width, y: 0.6664218046*height), control2: CGPoint(x: 0.3335781954*width, y: 0.8013333333*height))
        _hole2.addCurve(to: CGPoint(x: 0.7609623263*width, y: 0.6506666683*height), control1: CGPoint(x: 0.6076560324*width, y: 0.8013333353*height), control2: CGPoint(x: 0.7071343095*width, y: 0.7438995269*height))
        _hole2.addCurve(to: CGPoint(x: 0.7609623263*width, y: 0.3493333317*height), control1: CGPoint(x: 0.814790343*width, y: 0.5574338097*height), control2: CGPoint(x: 0.814790343*width, y: 0.4425661903*height))
        _hole2.addCurve(to: CGPoint(x: 0.5*width, y: 0.1986666667*height), control1: CGPoint(x: 0.7071343095*width, y: 0.2561004731*height), control2: CGPoint(x: 0.6076560324*width, y: 0.1986666647*height))
        path.addReversedPath(_hole2)
        var _hole4 = Path()
        _hole4.move(to: CGPoint(x: 0.5*width, y: 0.2974166667*height))
        _hole4.addLine(to: CGPoint(x: 0.6439583333*width, y: 0.7159583333*height))
        _hole4.addLine(to: CGPoint(x: 0.3560416667*width, y: 0.7159583333*height))
        _hole4.closeSubpath()
        path.addReversedPath(_hole4)
        return path
    }
}