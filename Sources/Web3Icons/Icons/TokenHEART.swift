// GENERATED FROM @web3icons/core@4.0.51 — DO NOT EDIT
import SwiftUI

internal struct TokenHEART: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.7777916667*width, y: 0.525*height))
        _hole2.addLine(to: CGPoint(x: 0.7777916667*width, y: 0.783875*height))
        _hole2.addQuadCurve(to: CGPoint(x: 0.611125*width, y: 0.796125*height), control: CGPoint(x: 0.6965416667*width, y: 0.7864166667*height))
        _hole2.addLine(to: CGPoint(x: 0.611125*width, y: 0.56*height))
        _hole2.addCurve(to: CGPoint(x: 0.51*width, y: 0.4305416667*height), control1: CGPoint(x: 0.611125*width, y: 0.4755416667*height), control2: CGPoint(x: 0.5808333333*width, y: 0.4305416667*height))
        _hole2.addCurve(to: CGPoint(x: 0.3889166667*width, y: 0.5777916667*height), control1: CGPoint(x: 0.4375*width, y: 0.4305416667*height), control2: CGPoint(x: 0.3889166667*width, y: 0.4775*height))
        _hole2.addLine(to: CGPoint(x: 0.3889166667*width, y: 0.8327916667*height))
        _hole2.addCurve(to: CGPoint(x: 0.22225*width, y: 0.875*height), control1: CGPoint(x: 0.3328527148*width, y: 0.8447714459*height), control2: CGPoint(x: 0.277258045*width, y: 0.8588507961*height))
        _hole2.addLine(to: CGPoint(x: 0.22225*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.3889166667*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.3889166667*width, y: 0.353625*height))
        _hole2.addCurve(to: CGPoint(x: 0.5527916667*width, y: 0.2916666667*height), control1: CGPoint(x: 0.428625*width, y: 0.3133333333*height), control2: CGPoint(x: 0.4833333333*width, y: 0.2916666667*height))
        _hole2.addCurve(to: CGPoint(x: 0.7777916667*width, y: 0.5252916667*height), control1: CGPoint(x: 0.6972083333*width, y: 0.2916666667*height), control2: CGPoint(x: 0.7777916667*width, y: 0.395*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}