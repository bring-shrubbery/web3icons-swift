// GENERATED FROM @web3icons/core@4.0.51 — DO NOT EDIT
import SwiftUI

internal struct TokenODIN: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.746375*width, y: 0.7819166667*height))
        _hole2.addCurve(to: CGPoint(x: 0.2343826324*width, y: 0.7656160805*height), control1: CGPoint(x: 0.5981290871*width, y: 0.9123862929*height), control2: CGPoint(x: 0.3740290606*width, y: 0.9052514955*height))
        _hole2.addCurve(to: CGPoint(x: 0.2180416667*width, y: 0.253625*height), control1: CGPoint(x: 0.0947362042*width, y: 0.6259806654*height), control2: CGPoint(x: 0.0875837326*width, y: 0.4018812022*height))
        _hole2.addLine(to: CGPoint(x: 0.359625*width, y: 0.3951666667*height))
        _hole2.addLine(to: CGPoint(x: 0.359625*width, y: 0.640375*height))
        _hole2.addLine(to: CGPoint(x: 0.6048333333*width, y: 0.640375*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.7819166667*width, y: 0.746375*height))
        _hole2.addCurve(to: CGPoint(x: 0.7656160805*width, y: 0.2343826324*height), control1: CGPoint(x: 0.9123862929*width, y: 0.5981290871*height), control2: CGPoint(x: 0.9052514955*width, y: 0.3740290606*height))
        _hole2.addCurve(to: CGPoint(x: 0.253625*width, y: 0.2180416667*height), control1: CGPoint(x: 0.6259806654*width, y: 0.0947362042*height), control2: CGPoint(x: 0.4018812022*width, y: 0.0875837326*height))
        _hole2.addLine(to: CGPoint(x: 0.3951666667*width, y: 0.359625*height))
        _hole2.addLine(to: CGPoint(x: 0.640375*width, y: 0.359625*height))
        _hole2.addLine(to: CGPoint(x: 0.640375*width, y: 0.6048333333*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}