// GENERATED FROM @web3icons/core@4.0.55 — DO NOT EDIT
import SwiftUI

internal struct NetworkCelo: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.125*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.875*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.875*width, y: 0.392875*height))
        _hole2.addLine(to: CGPoint(x: 0.745375*width, y: 0.392875*height))
        _hole2.addCurve(to: CGPoint(x: 0.4451365027*width, y: 0.2377726853*height), control1: CGPoint(x: 0.6946450395*width, y: 0.2766057654*height), control2: CGPoint(x: 0.5693164915*width, y: 0.2118614103*height))
        _hole2.addCurve(to: CGPoint(x: 0.2319775978*width, y: 0.5*height), control1: CGPoint(x: 0.3209565138*width, y: 0.2636839604*height), control2: CGPoint(x: 0.2319775978*width, y: 0.3731455014*height))
        _hole2.addCurve(to: CGPoint(x: 0.4451365027*width, y: 0.7622273147*height), control1: CGPoint(x: 0.2319775978*width, y: 0.6268544986*height), control2: CGPoint(x: 0.3209565138*width, y: 0.7363160396*height))
        _hole2.addCurve(to: CGPoint(x: 0.745375*width, y: 0.607125*height), control1: CGPoint(x: 0.5693164915*width, y: 0.7881385897*height), control2: CGPoint(x: 0.6946450395*width, y: 0.7233942346*height))
        _hole2.addLine(to: CGPoint(x: 0.875*width, y: 0.607125*height))
        _hole2.addLine(to: CGPoint(x: 0.875*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.125*width, y: 0.875*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}