// GENERATED FROM @web3icons/core@4.0.51 — DO NOT EDIT
import SwiftUI

internal struct NetworkUltra: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.275*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.275*width, y: 0.4999583333*height))
        _hole2.addCurve(to: CGPoint(x: 0.5*width, y: 0.7249583333*height), control1: CGPoint(x: 0.275*width, y: 0.624222402*height), control2: CGPoint(x: 0.3757359313*width, y: 0.7249583333*height))
        _hole2.addCurve(to: CGPoint(x: 0.725*width, y: 0.4999583333*height), control1: CGPoint(x: 0.6242640687*width, y: 0.7249583333*height), control2: CGPoint(x: 0.725*width, y: 0.624222402*height))
        _hole2.addLine(to: CGPoint(x: 0.725*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.875*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.875*width, y: 0.4999583333*height))
        _hole2.addCurve(to: CGPoint(x: 0.5*width, y: 0.8749583333*height), control1: CGPoint(x: 0.875*width, y: 0.7070651145*height), control2: CGPoint(x: 0.7071067812*width, y: 0.8749583333*height))
        _hole2.addCurve(to: CGPoint(x: 0.125*width, y: 0.4999583333*height), control1: CGPoint(x: 0.2928932188*width, y: 0.8749583333*height), control2: CGPoint(x: 0.125*width, y: 0.7070651145*height))
        _hole2.addLine(to: CGPoint(x: 0.125*width, y: 0.125*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        var _hole4 = Path()
        _hole4.move(to: CGPoint(x: 0.575*width, y: 0.125*height))
        _hole4.addLine(to: CGPoint(x: 0.575*width, y: 0.5000416667*height))
        _hole4.addCurve(to: CGPoint(x: 0.5375000004*width, y: 0.5649935731*height), control1: CGPoint(x: 0.5750000005*width, y: 0.5268365862*height), control2: CGPoint(x: 0.5607050814*width, y: 0.5515961132*height))
        _hole4.addCurve(to: CGPoint(x: 0.4624999996*width, y: 0.5649935731*height), control1: CGPoint(x: 0.5142949194*width, y: 0.578391033*height), control2: CGPoint(x: 0.4857050806*width, y: 0.578391033*height))
        _hole4.addCurve(to: CGPoint(x: 0.425*width, y: 0.5000416667*height), control1: CGPoint(x: 0.4392949186*width, y: 0.5515961132*height), control2: CGPoint(x: 0.4249999995*width, y: 0.5268365862*height))
        _hole4.addLine(to: CGPoint(x: 0.425*width, y: 0.125*height))
        _hole4.closeSubpath()
        path.addReversedPath(_hole4)
        return path
    }
}