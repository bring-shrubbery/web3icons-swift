// GENERATED FROM @web3icons/core@4.0.51 — DO NOT EDIT
import SwiftUI

internal struct TokenGSE: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.875*width, y: 0.5*height))
        _hole2.addCurve(to: CGPoint(x: 0.5*width, y: 0.875*height), control1: CGPoint(x: 0.875*width, y: 0.7071067812*height), control2: CGPoint(x: 0.7071067812*width, y: 0.875*height))
        _hole2.addCurve(to: CGPoint(x: 0.125*width, y: 0.5*height), control1: CGPoint(x: 0.2928932188*width, y: 0.875*height), control2: CGPoint(x: 0.125*width, y: 0.7071067812*height))
        _hole2.addCurve(to: CGPoint(x: 0.5*width, y: 0.125*height), control1: CGPoint(x: 0.125*width, y: 0.2928932188*height), control2: CGPoint(x: 0.2928932188*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.5*width, y: 0.265625*height))
        _hole2.addCurve(to: CGPoint(x: 0.2671293423*width, y: 0.4770725551*height), control1: CGPoint(x: 0.3795911377*width, y: 0.2658397215*height), control2: CGPoint(x: 0.2789273264*width, y: 0.3572428936*height))
        _hole2.addCurve(to: CGPoint(x: 0.4542916667*width, y: 0.729875*height), control1: CGPoint(x: 0.2553313583*width, y: 0.5969022167*height), control2: CGPoint(x: 0.3362366689*width, y: 0.7061820112*height))
        _hole2.addCurve(to: CGPoint(x: 0.6486618791*width, y: 0.6811322589*height), control1: CGPoint(x: 0.5231112432*width, y: 0.7435281269*height), control2: CGPoint(x: 0.5944283959*width, y: 0.7256437326*height))
        _hole2.addCurve(to: CGPoint(x: 0.734375*width, y: 0.5*height), control1: CGPoint(x: 0.7028953623*width, y: 0.6366207851*height), control2: CGPoint(x: 0.7343447066*width, y: 0.570160823*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.5702916667*width, y: 0.3359166667*height))
        _hole2.addLine(to: CGPoint(x: 0.5702916667*width, y: 0.5*height))
        _hole2.addLine(to: CGPoint(x: 0.734375*width, y: 0.5*height))
        _hole2.addLine(to: CGPoint(x: 0.734375*width, y: 0.3359166667*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.828125*width, y: 0.3359166667*height))
        _hole2.addLine(to: CGPoint(x: 0.828125*width, y: 0.2421666667*height))
        _hole2.addLine(to: CGPoint(x: 0.734375*width, y: 0.2421666667*height))
        _hole2.addLine(to: CGPoint(x: 0.734375*width, y: 0.3359166667*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}