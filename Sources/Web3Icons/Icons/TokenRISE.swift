// GENERATED FROM @web3icons/core@4.0.51 — DO NOT EDIT
import SwiftUI

internal struct TokenRISE: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.5234166667*width, y: 0.4061666667*height))
        _hole2.addLine(to: CGPoint(x: 0.7225833333*width, y: 0.5547083333*height))
        _hole2.addLine(to: CGPoint(x: 0.7342916667*width, y: 0.543*height))
        _hole2.addLine(to: CGPoint(x: 0.5*width, y: 0.2187083333*height))
        _hole2.addLine(to: CGPoint(x: 0.2657083333*width, y: 0.543*height))
        _hole2.addLine(to: CGPoint(x: 0.277375*width, y: 0.5549166667*height))
        _hole2.addLine(to: CGPoint(x: 0.4765416667*width, y: 0.4061666667*height))
        _hole2.addLine(to: CGPoint(x: 0.397375*width, y: 0.875*height))
        _hole2.addCurve(to: CGPoint(x: 0.1250833333*width, y: 0.5071666667*height), control1: CGPoint(x: 0.240125*width, y: 0.8292916667*height), control2: CGPoint(x: 0.1250833333*width, y: 0.6819166667*height))
        _hole2.addCurve(to: CGPoint(x: 0.5*width, y: 0.125*height), control1: CGPoint(x: 0.1250833333*width, y: 0.2960416667*height), control2: CGPoint(x: 0.2929166667*width, y: 0.125*height))
        _hole2.addCurve(to: CGPoint(x: 0.874875*width, y: 0.507125*height), control1: CGPoint(x: 0.7070833333*width, y: 0.125*height), control2: CGPoint(x: 0.874875*width, y: 0.2963333333*height))
        _hole2.addCurve(to: CGPoint(x: 0.602625*width, y: 0.8747916667*height), control1: CGPoint(x: 0.8759097831*width, y: 0.6765625356*height), control2: CGPoint(x: 0.7649940088*width, y: 0.8263514539*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}