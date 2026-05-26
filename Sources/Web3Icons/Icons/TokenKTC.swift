// GENERATED FROM @web3icons/core@4.0.51 — DO NOT EDIT
import SwiftUI

internal struct TokenKTC: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.2455416667*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.2455416667*width, y: 0.232125*height))
        _hole2.addLine(to: CGPoint(x: 0.138375*width, y: 0.232125*height))
        _hole2.addLine(to: CGPoint(x: 0.138375*width, y: 0.125*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.8615833333*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.7115833333*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.2455416667*width, y: 0.5932083333*height))
        _hole2.addLine(to: CGPoint(x: 0.2455416667*width, y: 0.2857083333*height))
        _hole2.addLine(to: CGPoint(x: 0.138375*width, y: 0.2857083333*height))
        _hole2.addLine(to: CGPoint(x: 0.138375*width, y: 0.875*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.5519583333*width, y: 0.5535833333*height))
        _hole2.addLine(to: CGPoint(x: 0.8615833333*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.7115833333*width, y: 0.875*height))
        _hole2.addCurve(to: CGPoint(x: 0.4732083333*width, y: 0.6365833333*height), control1: CGPoint(x: 0.6325525641*width, y: 0.7951014352*height), control2: CGPoint(x: 0.5530930839*width, y: 0.7156280659*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}