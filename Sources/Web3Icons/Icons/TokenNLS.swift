// GENERATED FROM @web3icons/core@4.0.55 — DO NOT EDIT
import SwiftUI

internal struct TokenNLS: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.5*width, y: 0.875*height))
        _hole2.addCurve(to: CGPoint(x: 0.8749583333*width, y: 0.5000416667*height), control1: CGPoint(x: 0.7070837693*width, y: 0.875*height), control2: CGPoint(x: 0.8749583333*width, y: 0.707125436*height))
        _hole2.addCurve(to: CGPoint(x: 0.5*width, y: 0.1250833333*height), control1: CGPoint(x: 0.8749583333*width, y: 0.2929578973*height), control2: CGPoint(x: 0.7070837693*width, y: 0.1250833333*height))
        _hole2.addCurve(to: CGPoint(x: 0.1250416667*width, y: 0.5000416667*height), control1: CGPoint(x: 0.2929162307*width, y: 0.1250833333*height), control2: CGPoint(x: 0.1250416667*width, y: 0.2929578973*height))
        _hole2.addCurve(to: CGPoint(x: 0.5*width, y: 0.875*height), control1: CGPoint(x: 0.1250416667*width, y: 0.707125436*height), control2: CGPoint(x: 0.2929162307*width, y: 0.875*height))
        _hole2.move(to: CGPoint(x: 0.6260833333*width, y: 0.3125*height))
        _hole2.addCurve(to: CGPoint(x: 0.6695114748*width, y: 0.3304885252*height), control1: CGPoint(x: 0.6423720461*width, y: 0.3125*height), control2: CGPoint(x: 0.6579936156*width, y: 0.3189706659*height))
        _hole2.addCurve(to: CGPoint(x: 0.6875*width, y: 0.3739166667*height), control1: CGPoint(x: 0.6810293341*width, y: 0.3420063844*height), control2: CGPoint(x: 0.6875*width, y: 0.3576279539*height))
        _hole2.addLine(to: CGPoint(x: 0.6875*width, y: 0.6260833333*height))
        _hole2.addCurve(to: CGPoint(x: 0.6695114748*width, y: 0.6695114748*height), control1: CGPoint(x: 0.6875*width, y: 0.6423720461*height), control2: CGPoint(x: 0.6810293341*width, y: 0.6579936156*height))
        _hole2.addCurve(to: CGPoint(x: 0.6260833333*width, y: 0.6875*height), control1: CGPoint(x: 0.6579936156*width, y: 0.6810293341*height), control2: CGPoint(x: 0.6423720461*width, y: 0.6875*height))
        _hole2.addLine(to: CGPoint(x: 0.3739166667*width, y: 0.6875*height))
        _hole2.addCurve(to: CGPoint(x: 0.3125*width, y: 0.6260833333*height), control1: CGPoint(x: 0.3399971783*width, y: 0.6875*height), control2: CGPoint(x: 0.3125*width, y: 0.6600028217*height))
        _hole2.addLine(to: CGPoint(x: 0.3125*width, y: 0.3739166667*height))
        _hole2.addCurve(to: CGPoint(x: 0.3739166667*width, y: 0.3125*height), control1: CGPoint(x: 0.3125*width, y: 0.3399971783*height), control2: CGPoint(x: 0.3399971783*width, y: 0.3125*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}