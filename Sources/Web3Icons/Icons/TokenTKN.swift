// GENERATED FROM @web3icons/core@4.0.55 — DO NOT EDIT
import SwiftUI

internal struct TokenTKN: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.4179583333*width, y: 0.196625*height))
        _hole2.addLine(to: CGPoint(x: 0.5820833333*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.5820833333*width, y: 0.3125*height))
        _hole2.addLine(to: CGPoint(x: 0.793*width, y: 0.3125*height))
        _hole2.addLine(to: CGPoint(x: 0.793*width, y: 0.453125*height))
        _hole2.addLine(to: CGPoint(x: 0.5820833333*width, y: 0.453125*height))
        _hole2.addLine(to: CGPoint(x: 0.5820833333*width, y: 0.6732083333*height))
        _hole2.addCurve(to: CGPoint(x: 0.746125*width, y: 0.7272083333*height), control1: CGPoint(x: 0.5820833333*width, y: 0.7422083333*height), control2: CGPoint(x: 0.7029166667*width, y: 0.7500833333*height))
        _hole2.addLine(to: CGPoint(x: 0.7849583333*width, y: 0.8464583333*height))
        _hole2.addCurve(to: CGPoint(x: 0.418*width, y: 0.674375*height), control1: CGPoint(x: 0.68975*width, y: 0.903125*height), control2: CGPoint(x: 0.418*width, y: 0.8895833333*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.2792083333*width, y: 0.48125*height))
        _hole2.addCurve(to: CGPoint(x: 0.2070416667*width, y: 0.391625*height), control1: CGPoint(x: 0.23925*width, y: 0.48125*height), control2: CGPoint(x: 0.2070416667*width, y: 0.441125*height))
        _hole2.addCurve(to: CGPoint(x: 0.2795416667*width, y: 0.302375*height), control1: CGPoint(x: 0.2070416667*width, y: 0.342125*height), control2: CGPoint(x: 0.239625*width, y: 0.302375*height))
        _hole2.addCurve(to: CGPoint(x: 0.3520416667*width, y: 0.391625*height), control1: CGPoint(x: 0.3198333333*width, y: 0.302375*height), control2: CGPoint(x: 0.3520416667*width, y: 0.342125*height))
        _hole2.addCurve(to: CGPoint(x: 0.2795416667*width, y: 0.480875*height), control1: CGPoint(x: 0.3520416667*width, y: 0.44075*height), control2: CGPoint(x: 0.3198333333*width, y: 0.480875*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}