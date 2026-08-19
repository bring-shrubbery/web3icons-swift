// GENERATED FROM @web3icons/core@4.0.55 — DO NOT EDIT
import SwiftUI

internal struct NetworkLinea: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.7347083333*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.1449166667*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.1449166667*width, y: 0.2467083333*height))
        _hole2.addLine(to: CGPoint(x: 0.2798333333*width, y: 0.2467083333*height))
        _hole2.addLine(to: CGPoint(x: 0.2798333333*width, y: 0.75325*height))
        _hole2.addLine(to: CGPoint(x: 0.7347083333*width, y: 0.75325*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.73475*width, y: 0.368375*height))
        _hole2.addCurve(to: CGPoint(x: 0.855125*width, y: 0.2467083333*height), control1: CGPoint(x: 0.8012083333*width, y: 0.368375*height), control2: CGPoint(x: 0.855125*width, y: 0.3139166667*height))
        _hole2.addCurve(to: CGPoint(x: 0.7347083333*width, y: 0.125*height), control1: CGPoint(x: 0.855125*width, y: 0.1795*height), control2: CGPoint(x: 0.8012083333*width, y: 0.125*height))
        _hole2.addCurve(to: CGPoint(x: 0.614375*width, y: 0.2466666667*height), control1: CGPoint(x: 0.66825*width, y: 0.125*height), control2: CGPoint(x: 0.614375*width, y: 0.1795*height))
        _hole2.addCurve(to: CGPoint(x: 0.73475*width, y: 0.368375*height), control1: CGPoint(x: 0.614375*width, y: 0.3139166667*height), control2: CGPoint(x: 0.66825*width, y: 0.368375*height))
        path.addReversedPath(_hole2)
        return path
    }
}