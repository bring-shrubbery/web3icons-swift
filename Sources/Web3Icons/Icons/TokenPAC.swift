// GENERATED FROM @web3icons/core@4.0.55 — DO NOT EDIT
import SwiftUI

internal struct TokenPAC: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.5*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.5*width, y: 0.349*height))
        _hole2.addLine(to: CGPoint(x: 0.5752083333*width, y: 0.6494166667*height))
        _hole2.addLine(to: CGPoint(x: 0.688875*width, y: 0.5*height))
        _hole2.addLine(to: CGPoint(x: 0.50025*width, y: 0.2461666667*height))
        _hole2.addLine(to: CGPoint(x: 0.311375*width, y: 0.5002083333*height))
        _hole2.addLine(to: CGPoint(x: 0.4248333333*width, y: 0.649625*height))
        _hole2.addLine(to: CGPoint(x: 0.4605833333*width, y: 0.4984166667*height))
        _hole2.addLine(to: CGPoint(x: 0.4605833333*width, y: 0.81975*height))
        _hole2.addLine(to: CGPoint(x: 0.22375*width, y: 0.5*height))
        _hole2.addLine(to: CGPoint(x: 0.5*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.7763333333*width, y: 0.5*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}