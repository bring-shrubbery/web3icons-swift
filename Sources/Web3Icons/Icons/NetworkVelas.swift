// GENERATED FROM @web3icons/core@4.0.55 — DO NOT EDIT
import SwiftUI

internal struct NetworkVelas: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.640625*width, y: 0.415625*height))
        _hole2.addLine(to: CGPoint(x: 0.5002083333*width, y: 0.66875*height))
        _hole2.addLine(to: CGPoint(x: 0.359375*width, y: 0.415625*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.78125*width, y: 0.33125*height))
        _hole2.addLine(to: CGPoint(x: 0.21875*width, y: 0.3310833333*height))
        _hole2.addLine(to: CGPoint(x: 0.5002083333*width, y: 0.8375*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.125*width, y: 0.1625*height))
        _hole2.addLine(to: CGPoint(x: 0.171875*width, y: 0.2470833333*height))
        _hole2.addLine(to: CGPoint(x: 0.828125*width, y: 0.2470833333*height))
        _hole2.addLine(to: CGPoint(x: 0.875*width, y: 0.1625*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        return path
    }
}