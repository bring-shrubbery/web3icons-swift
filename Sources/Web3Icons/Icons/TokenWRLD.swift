// GENERATED FROM @web3icons/core@4.0.51 — DO NOT EDIT
import SwiftUI

internal struct TokenWRLD: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.875*width, y: 0.421*height))
        _hole2.addLine(to: CGPoint(x: 0.875*width, y: 0.5789166667*height))
        _hole2.addLine(to: CGPoint(x: 0.5*width, y: 0.7368333333*height))
        _hole2.addLine(to: CGPoint(x: 0.125*width, y: 0.5789583333*height))
        _hole2.addLine(to: CGPoint(x: 0.125*width, y: 0.4210416667*height))
        _hole2.addLine(to: CGPoint(x: 0.5*width, y: 0.263125*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.1842083333*width, y: 0.454*height))
        _hole2.addLine(to: CGPoint(x: 0.5*width, y: 0.5986666667*height))
        _hole2.addLine(to: CGPoint(x: 0.8157916667*width, y: 0.454*height))
        _hole2.addLine(to: CGPoint(x: 0.5*width, y: 0.3223333333*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}