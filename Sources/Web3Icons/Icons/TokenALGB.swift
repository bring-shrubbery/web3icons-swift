// GENERATED FROM @web3icons/core@4.0.51 — DO NOT EDIT
import SwiftUI

internal struct TokenALGB: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.4889583333*width, y: 0.1470416667*height))
        _hole2.addLine(to: CGPoint(x: 0.4889583333*width, y: 0.62125*height))
        _hole2.addLine(to: CGPoint(x: 0.125*width, y: 0.830875*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.5110416667*width, y: 0.1470416667*height))
        _hole2.addLine(to: CGPoint(x: 0.5110416667*width, y: 0.62125*height))
        _hole2.addLine(to: CGPoint(x: 0.875*width, y: 0.830875*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.5*width, y: 0.6434166667*height))
        _hole2.addLine(to: CGPoint(x: 0.136*width, y: 0.853*height))
        _hole2.addLine(to: CGPoint(x: 0.8639166667*width, y: 0.853*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}