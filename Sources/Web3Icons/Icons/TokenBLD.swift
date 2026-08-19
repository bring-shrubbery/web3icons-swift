// GENERATED FROM @web3icons/core@4.0.55 — DO NOT EDIT
import SwiftUI

internal struct TokenBLD: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.125*width, y: 0.423125*height))
        _hole2.addLine(to: CGPoint(x: 0.2788333333*width, y: 0.423125*height))
        _hole2.addLine(to: CGPoint(x: 0.2788333333*width, y: 0.5769583333*height))
        _hole2.addLine(to: CGPoint(x: 0.125*width, y: 0.5769583333*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        var _hole4 = Path()
        _hole4.move(to: CGPoint(x: 0.875*width, y: 0.26925*height))
        _hole4.addLine(to: CGPoint(x: 0.4134583333*width, y: 0.26925*height))
        _hole4.addLine(to: CGPoint(x: 0.4134583333*width, y: 0.73075*height))
        _hole4.addLine(to: CGPoint(x: 0.875*width, y: 0.73075*height))
        _hole4.closeSubpath()
        _hole4.move(to: CGPoint(x: 0.7211666667*width, y: 0.5769166667*height))
        _hole4.addLine(to: CGPoint(x: 0.5673333333*width, y: 0.5769166667*height))
        _hole4.addLine(to: CGPoint(x: 0.5673333333*width, y: 0.4230833333*height))
        _hole4.addLine(to: CGPoint(x: 0.7211666667*width, y: 0.4230833333*height))
        _hole4.closeSubpath()
        path.addReversedPath(_hole4)
        return path
    }
}