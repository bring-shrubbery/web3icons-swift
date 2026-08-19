// GENERATED FROM @web3icons/core@4.0.55 — DO NOT EDIT
import SwiftUI

internal struct NetworkKava: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.2054166667*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.2054166667*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.3232083333*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.3232083333*width, y: 0.875*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.7946666667*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.5295*width, y: 0.4999166667*height))
        _hole2.addLine(to: CGPoint(x: 0.7946666667*width, y: 0.1251666667*height))
        _hole2.addLine(to: CGPoint(x: 0.647375*width, y: 0.1251666667*height))
        _hole2.addLine(to: CGPoint(x: 0.3820833333*width, y: 0.4999166667*height))
        _hole2.addLine(to: CGPoint(x: 0.647375*width, y: 0.875*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}