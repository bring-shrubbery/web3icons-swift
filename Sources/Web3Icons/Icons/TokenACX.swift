// GENERATED FROM @web3icons/core@4.0.51 — DO NOT EDIT
import SwiftUI

internal struct TokenACX: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.4025*width, y: 0.47775*height))
        _hole2.addLine(to: CGPoint(x: 0.125*width, y: 0.20025*height))
        _hole2.addLine(to: CGPoint(x: 0.20025*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.47775*width, y: 0.4025*height))
        _hole2.addCurve(to: CGPoint(x: 0.4025*width, y: 0.47775*height), control1: CGPoint(x: 0.440294282*width, y: 0.4110459619*height), control2: CGPoint(x: 0.4110459619*width, y: 0.440294282*height))
        _hole2.move(to: CGPoint(x: 0.52225*width, y: 0.4025*height))
        _hole2.addCurve(to: CGPoint(x: 0.5975*width, y: 0.47775*height), control1: CGPoint(x: 0.559705718*width, y: 0.4110459619*height), control2: CGPoint(x: 0.5889540381*width, y: 0.440294282*height))
        _hole2.addLine(to: CGPoint(x: 0.875*width, y: 0.20025*height))
        _hole2.addLine(to: CGPoint(x: 0.79975*width, y: 0.125*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.5975*width, y: 0.52225*height))
        _hole2.addCurve(to: CGPoint(x: 0.52225*width, y: 0.5975*height), control1: CGPoint(x: 0.5889540381*width, y: 0.559705718*height), control2: CGPoint(x: 0.559705718*width, y: 0.5889540381*height))
        _hole2.addLine(to: CGPoint(x: 0.79975*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.875*width, y: 0.79975*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.47775*width, y: 0.5975*height))
        _hole2.addLine(to: CGPoint(x: 0.20025*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.125*width, y: 0.79975*height))
        _hole2.addLine(to: CGPoint(x: 0.4025*width, y: 0.52225*height))
        _hole2.addCurve(to: CGPoint(x: 0.47775*width, y: 0.5975*height), control1: CGPoint(x: 0.4110459619*width, y: 0.559705718*height), control2: CGPoint(x: 0.440294282*width, y: 0.5889540381*height))
        path.addReversedPath(_hole2)
        return path
    }
}