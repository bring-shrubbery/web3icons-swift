// GENERATED FROM @web3icons/core@4.0.55 — DO NOT EDIT
import SwiftUI

internal struct NetworkReya: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.3499166667*width, y: 0.5949166667*height))
        _hole2.addLine(to: CGPoint(x: 0.2897916667*width, y: 0.4789583333*height))
        _hole2.addLine(to: CGPoint(x: 0.2897916667*width, y: 0.2419583333*height))
        _hole2.addLine(to: CGPoint(x: 0.21875*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.5045833333*width, y: 0.125*height))
        _hole2.addCurve(to: CGPoint(x: 0.7740833333*width, y: 0.3589166667*height), control1: CGPoint(x: 0.6747083333*width, y: 0.125*height), control2: CGPoint(x: 0.7740833333*width, y: 0.2111666667*height))
        _hole2.addCurve(to: CGPoint(x: 0.6388333333*width, y: 0.5672083333*height), control1: CGPoint(x: 0.7740833333*width, y: 0.4594583333*height), control2: CGPoint(x: 0.7269583333*width, y: 0.5312916667*height))
        _hole2.addLine(to: CGPoint(x: 0.78125*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.6377916667*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.51075*width, y: 0.5949166667*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.2897916667*width, y: 0.242*height))
        _hole2.addLine(to: CGPoint(x: 0.2897916667*width, y: 0.4789583333*height))
        _hole2.addLine(to: CGPoint(x: 0.504625*width, y: 0.4789583333*height))
        _hole2.addCurve(to: CGPoint(x: 0.6367916667*width, y: 0.3589583333*height), control1: CGPoint(x: 0.5875833333*width, y: 0.4789583333*height), control2: CGPoint(x: 0.6367916667*width, y: 0.4348333333*height))
        _hole2.addCurve(to: CGPoint(x: 0.504625*width, y: 0.2419583333*height), control1: CGPoint(x: 0.6367916667*width, y: 0.2840416667*height), control2: CGPoint(x: 0.587625*width, y: 0.2419583333*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}