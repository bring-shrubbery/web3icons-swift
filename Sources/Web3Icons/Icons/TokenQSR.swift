// GENERATED FROM @web3icons/core@4.0.51 — DO NOT EDIT
import SwiftUI

internal struct TokenQSR: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.6865416667*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.4765416667*width, y: 0.4882916667*height))
        _hole2.addLine(to: CGPoint(x: 0.125*width, y: 0.318125*height))
        _hole2.addLine(to: CGPoint(x: 0.125*width, y: 0.2890416667*height))
        _hole2.addCurve(to: CGPoint(x: 0.1730466918*width, y: 0.1730466918*height), control1: CGPoint(x: 0.125*width, y: 0.2455351116*height), control2: CGPoint(x: 0.1422829117*width, y: 0.2038104719*height))
        _hole2.addCurve(to: CGPoint(x: 0.2890416667*width, y: 0.125*height), control1: CGPoint(x: 0.2038104719*width, y: 0.1422829117*height), control2: CGPoint(x: 0.2455351116*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.3134166667*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.5234166667*width, y: 0.5117083333*height))
        _hole2.addLine(to: CGPoint(x: 0.875*width, y: 0.6765*height))
        _hole2.addLine(to: CGPoint(x: 0.875*width, y: 0.7109166667*height))
        _hole2.addCurve(to: CGPoint(x: 0.8269680421*width, y: 0.8269385778*height), control1: CGPoint(x: 0.8750110525*width, y: 0.7544304405*height), control2: CGPoint(x: 0.8577330202*width, y: 0.7961657853*height))
        _hole2.addCurve(to: CGPoint(x: 0.7109583333*width, y: 0.875*height), control1: CGPoint(x: 0.796203064*width, y: 0.8577113702*height), control2: CGPoint(x: 0.7544721085*width, y: 0.8750000014*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}