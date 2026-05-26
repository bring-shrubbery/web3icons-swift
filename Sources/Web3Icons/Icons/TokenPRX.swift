// GENERATED FROM @web3icons/core@4.0.51 — DO NOT EDIT
import SwiftUI

internal struct TokenPRX: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.4625*width, y: 0.5220833333*height))
        _hole2.addLine(to: CGPoint(x: 0.1829166667*width, y: 0.1290833333*height))
        _hole2.addLine(to: CGPoint(x: 0.8214166667*width, y: 0.33675*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        var _hole4 = Path()
        _hole4.move(to: CGPoint(x: 0.1785833333*width, y: 0.125*height))
        _hole4.addLine(to: CGPoint(x: 0.5514166667*width, y: 0.6272916667*height))
        _hole4.addLine(to: CGPoint(x: 0.1785833333*width, y: 0.875*height))
        _hole4.addLine(to: CGPoint(x: 0.3114166667*width, y: 0.6189166667*height))
        _hole4.closeSubpath()
        path.addReversedPath(_hole4)
        return path
    }
}