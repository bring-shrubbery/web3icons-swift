// GENERATED FROM @web3icons/core@4.0.55 — DO NOT EDIT
import SwiftUI

internal struct TokenVIX: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.3827916667*width, y: 0.839875*height))
        _hole2.addLine(to: CGPoint(x: 0.125*width, y: 0.1615833333*height))
        _hole2.addCurve(to: CGPoint(x: 0.3985*width, y: 0.3811666667*height), control1: CGPoint(x: 0.2579166667*width, y: 0.1456666667*height), control2: CGPoint(x: 0.3495416667*width, y: 0.2614166667*height))
        _hole2.addLine(to: CGPoint(x: 0.59375*width, y: 0.839875*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        var _hole4 = Path()
        _hole4.move(to: CGPoint(x: 0.40625*width, y: 0.8399166667*height))
        _hole4.addLine(to: CGPoint(x: 0.6015*width, y: 0.3811666667*height))
        _hole4.addCurve(to: CGPoint(x: 0.875*width, y: 0.1615833333*height), control1: CGPoint(x: 0.6504583333*width, y: 0.2614166667*height), control2: CGPoint(x: 0.7420833333*width, y: 0.1456666667*height))
        _hole4.addLine(to: CGPoint(x: 0.59375*width, y: 0.839875*height))
        _hole4.closeSubpath()
        path.addReversedPath(_hole4)
        return path
    }
}