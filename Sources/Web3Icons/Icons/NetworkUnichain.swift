// GENERATED FROM @web3icons/core@4.0.55 — DO NOT EDIT
import SwiftUI

internal struct NetworkUnichain: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.875*width, y: 0.507125*height))
        _hole2.addLine(to: CGPoint(x: 0.507125*width, y: 0.507125*height))
        _hole2.addLine(to: CGPoint(x: 0.507125*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.492875*width, y: 0.875*height))
        _hole2.addCurve(to: CGPoint(x: 0.125*width, y: 0.507125*height), control1: CGPoint(x: 0.4928519931*width, y: 0.6718377782*height), control2: CGPoint(x: 0.3281622218*width, y: 0.5071480069*height))
        _hole2.addLine(to: CGPoint(x: 0.125*width, y: 0.492875*height))
        _hole2.addLine(to: CGPoint(x: 0.492875*width, y: 0.492875*height))
        _hole2.addLine(to: CGPoint(x: 0.492875*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.507125*width, y: 0.125*height))
        _hole2.addCurve(to: CGPoint(x: 0.875*width, y: 0.492875*height), control1: CGPoint(x: 0.5071480069*width, y: 0.3281622218*height), control2: CGPoint(x: 0.6718377782*width, y: 0.4928519931*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}