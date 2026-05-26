// GENERATED FROM @web3icons/core@4.0.51 — DO NOT EDIT
import SwiftUI

internal struct TokenPIVX: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.5375*width, y: 0.2*height))
        _hole2.addLine(to: CGPoint(x: 0.2375*width, y: 0.2*height))
        _hole2.addLine(to: CGPoint(x: 0.2375*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.5375*width, y: 0.125*height))
        _hole2.addCurve(to: CGPoint(x: 0.7625*width, y: 0.35*height), control1: CGPoint(x: 0.6617640687*width, y: 0.125*height), control2: CGPoint(x: 0.7625*width, y: 0.2257359313*height))
        _hole2.addCurve(to: CGPoint(x: 0.5375*width, y: 0.575*height), control1: CGPoint(x: 0.7625*width, y: 0.4742640687*height), control2: CGPoint(x: 0.6617640687*width, y: 0.575*height))
        _hole2.addLine(to: CGPoint(x: 0.3125*width, y: 0.575*height))
        _hole2.addLine(to: CGPoint(x: 0.3125*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.2375*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.2375*width, y: 0.5*height))
        _hole2.addLine(to: CGPoint(x: 0.5375*width, y: 0.5*height))
        _hole2.addCurve(to: CGPoint(x: 0.6875*width, y: 0.35*height), control1: CGPoint(x: 0.6203427125*width, y: 0.5*height), control2: CGPoint(x: 0.6875*width, y: 0.4328427125*height))
        _hole2.addCurve(to: CGPoint(x: 0.5375*width, y: 0.2*height), control1: CGPoint(x: 0.6875*width, y: 0.2671572875*height), control2: CGPoint(x: 0.6203427125*width, y: 0.2*height))
        path.addReversedPath(_hole2)
        var _hole4 = Path()
        _hole4.move(to: CGPoint(x: 0.4875*width, y: 0.375*height))
        _hole4.addLine(to: CGPoint(x: 0.2375*width, y: 0.375*height))
        _hole4.addLine(to: CGPoint(x: 0.2375*width, y: 0.3*height))
        _hole4.addLine(to: CGPoint(x: 0.4875*width, y: 0.3*height))
        _hole4.closeSubpath()
        path.addReversedPath(_hole4)
        return path
    }
}