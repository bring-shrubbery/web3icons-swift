// GENERATED FROM @web3icons/core@4.0.51 — DO NOT EDIT
import SwiftUI

internal struct TokenVPAD: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.125*width, y: 0.171875*height))
        _hole2.addLine(to: CGPoint(x: 0.5*width, y: 0.828125*height))
        _hole2.addLine(to: CGPoint(x: 0.875*width, y: 0.171875*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.6605416667*width, y: 0.2890416667*height))
        _hole2.addLine(to: CGPoint(x: 0.5*width, y: 0.59375*height))
        _hole2.addLine(to: CGPoint(x: 0.436*width, y: 0.4765416667*height))
        _hole2.addLine(to: CGPoint(x: 0.3359166667*width, y: 0.4765416667*height))
        _hole2.addLine(to: CGPoint(x: 0.391*width, y: 0.39875*height))
        _hole2.addLine(to: CGPoint(x: 0.3321666667*width, y: 0.2890416667*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}