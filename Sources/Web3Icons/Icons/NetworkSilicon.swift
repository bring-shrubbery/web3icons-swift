// GENERATED FROM @web3icons/core@4.0.55 — DO NOT EDIT
import SwiftUI

internal struct NetworkSilicon: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.125*width, y: 0.6875*height))
        _hole2.addCurve(to: CGPoint(x: 0.3731666667*width, y: 0.538625*height), control1: CGPoint(x: 0.2288915906*width, y: 0.6875986636*height), control2: CGPoint(x: 0.3243499753*width, y: 0.6303332492*height))
        _hole2.addLine(to: CGPoint(x: 0.461375*width, y: 0.3731666667*height))
        _hole2.addCurve(to: CGPoint(x: 0.875*width, y: 0.125*height), control1: CGPoint(x: 0.542704047*width, y: 0.220276962*height), control2: CGPoint(x: 0.7018248323*width, y: 0.1248076967*height))
        _hole2.addLine(to: CGPoint(x: 0.875*width, y: 0.3125*height))
        _hole2.addCurve(to: CGPoint(x: 0.6268333333*width, y: 0.461375*height), control1: CGPoint(x: 0.7711084094*width, y: 0.3124013364*height), control2: CGPoint(x: 0.6756500247*width, y: 0.3696667508*height))
        _hole2.addLine(to: CGPoint(x: 0.538625*width, y: 0.6268333333*height))
        _hole2.addCurve(to: CGPoint(x: 0.125*width, y: 0.875*height), control1: CGPoint(x: 0.4569583333*width, y: 0.7799166667*height), control2: CGPoint(x: 0.2984583333*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.125*width, y: 0.6875*height))
        _hole2.move(to: CGPoint(x: 0.6875*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.875*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.875*width, y: 0.6875*height))
        _hole2.addLine(to: CGPoint(x: 0.6875*width, y: 0.6875*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}