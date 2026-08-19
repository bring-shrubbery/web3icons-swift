// GENERATED FROM @web3icons/core@4.0.55 — DO NOT EDIT
import SwiftUI

internal struct TokenHARD: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.1827083333*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.3269166667*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.3269166667*width, y: 0.4134583333*height))
        _hole2.addLine(to: CGPoint(x: 0.6730833333*width, y: 0.4134583333*height))
        _hole2.addLine(to: CGPoint(x: 0.6730833333*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.8173333333*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.8173333333*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.6730833333*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.6730833333*width, y: 0.5577083333*height))
        _hole2.addLine(to: CGPoint(x: 0.3269166667*width, y: 0.5577083333*height))
        _hole2.addLine(to: CGPoint(x: 0.3269166667*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.1827083333*width, y: 0.875*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}