// GENERATED FROM @web3icons/core@4.0.51 — DO NOT EDIT
import SwiftUI

internal struct NetworkMint: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.125*width, y: 0.125*height))
        _hole2.addCurve(to: CGPoint(x: 0.5*width, y: 0.5*height), control1: CGPoint(x: 0.3321067812*width, y: 0.125*height), control2: CGPoint(x: 0.5*width, y: 0.2928932188*height))
        _hole2.addCurve(to: CGPoint(x: 0.125*width, y: 0.125*height), control1: CGPoint(x: 0.2928932188*width, y: 0.5*height), control2: CGPoint(x: 0.125*width, y: 0.3321067812*height))
        _hole2.move(to: CGPoint(x: 0.875*width, y: 0.875*height))
        _hole2.addCurve(to: CGPoint(x: 0.5*width, y: 0.5*height), control1: CGPoint(x: 0.6678932188*width, y: 0.875*height), control2: CGPoint(x: 0.5*width, y: 0.7071067812*height))
        _hole2.addCurve(to: CGPoint(x: 0.875*width, y: 0.875*height), control1: CGPoint(x: 0.7071067812*width, y: 0.5*height), control2: CGPoint(x: 0.875*width, y: 0.6678932188*height))
        _hole2.move(to: CGPoint(x: 0.5*width, y: 0.5*height))
        _hole2.addCurve(to: CGPoint(x: 0.6875*width, y: 0.3125*height), control1: CGPoint(x: 0.5*width, y: 0.3964466094*height), control2: CGPoint(x: 0.5839466094*width, y: 0.3125*height))
        _hole2.addCurve(to: CGPoint(x: 0.5*width, y: 0.5*height), control1: CGPoint(x: 0.6875*width, y: 0.4160533906*height), control2: CGPoint(x: 0.6035533906*width, y: 0.5*height))
        _hole2.move(to: CGPoint(x: 0.5*width, y: 0.5*height))
        _hole2.addCurve(to: CGPoint(x: 0.3125*width, y: 0.6875*height), control1: CGPoint(x: 0.5*width, y: 0.6035533906*height), control2: CGPoint(x: 0.4160533906*width, y: 0.6875*height))
        _hole2.addCurve(to: CGPoint(x: 0.5*width, y: 0.5*height), control1: CGPoint(x: 0.3125*width, y: 0.5839466094*height), control2: CGPoint(x: 0.3964466094*width, y: 0.5*height))
        path.addReversedPath(_hole2)
        return path
    }
}