// GENERATED FROM @web3icons/core@4.0.55 — DO NOT EDIT
import SwiftUI

internal struct NetworkKakarot: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.875*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.875*width, y: 0.2495833333*height))
        _hole2.addCurve(to: CGPoint(x: 0.6543333333*width, y: 0.3736666667*height), control1: CGPoint(x: 0.8452916667*width, y: 0.2545833333*height), control2: CGPoint(x: 0.7381666667*width, y: 0.2762083333*height))
        _hole2.addCurve(to: CGPoint(x: 0.5647916667*width, y: 0.6248333333*height), control1: CGPoint(x: 0.564625*width, y: 0.478*height), control2: CGPoint(x: 0.5641666667*width, y: 0.5965*height))
        _hole2.addLine(to: CGPoint(x: 0.4352083333*width, y: 0.6248333333*height))
        _hole2.addCurve(to: CGPoint(x: 0.345625*width, y: 0.3736666667*height), control1: CGPoint(x: 0.4358333333*width, y: 0.5965*height), control2: CGPoint(x: 0.435375*width, y: 0.478*height))
        _hole2.addCurve(to: CGPoint(x: 0.125*width, y: 0.2495833333*height), control1: CGPoint(x: 0.2619166667*width, y: 0.2761666667*height), control2: CGPoint(x: 0.15475*width, y: 0.2545416667*height))
        _hole2.addLine(to: CGPoint(x: 0.125*width, y: 0.125*height))
        _hole2.addCurve(to: CGPoint(x: 0.5*width, y: 0.3679166667*height), control1: CGPoint(x: 0.2819326409*width, y: 0.1405515845*height), control2: CGPoint(x: 0.421648443*width, y: 0.2310563763*height))
        _hole2.addCurve(to: CGPoint(x: 0.875*width, y: 0.125*height), control1: CGPoint(x: 0.578351557*width, y: 0.2310563763*height), control2: CGPoint(x: 0.7180673591*width, y: 0.1405515845*height))
        _hole2.move(to: CGPoint(x: 0.875*width, y: 0.7499166667*height))
        _hole2.addLine(to: CGPoint(x: 0.125*width, y: 0.7499166667*height))
        _hole2.addLine(to: CGPoint(x: 0.125*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.875*width, y: 0.875*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}