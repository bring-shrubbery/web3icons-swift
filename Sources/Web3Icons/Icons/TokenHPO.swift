// GENERATED FROM @web3icons/core@4.0.55 — DO NOT EDIT
import SwiftUI

internal struct TokenHPO: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.4338333333*width, y: 0.4338333333*height))
        _hole2.addLine(to: CGPoint(x: 0.4338333333*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.5662083333*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.5662083333*width, y: 0.4338333333*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.875*width, y: 0.5661666667*height))
        _hole2.addLine(to: CGPoint(x: 0.875*width, y: 0.4338333333*height))
        _hole2.addLine(to: CGPoint(x: 0.5662083333*width, y: 0.4338333333*height))
        _hole2.addLine(to: CGPoint(x: 0.5662083333*width, y: 0.5661666667*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.4338333333*width, y: 0.5661666667*height))
        _hole2.addLine(to: CGPoint(x: 0.4338333333*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.5662083333*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.5662083333*width, y: 0.5661666667*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.125*width, y: 0.566125*height))
        _hole2.addLine(to: CGPoint(x: 0.4338333333*width, y: 0.566125*height))
        _hole2.addLine(to: CGPoint(x: 0.4338333333*width, y: 0.43375*height))
        _hole2.addLine(to: CGPoint(x: 0.125*width, y: 0.43375*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}