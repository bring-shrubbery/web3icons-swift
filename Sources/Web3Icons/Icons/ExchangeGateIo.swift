// GENERATED FROM @web3icons/core@4.0.55 — DO NOT EDIT
import SwiftUI

internal struct ExchangeGateIo: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.5*width, y: 0.70625*height))
        _hole2.addCurve(to: CGPoint(x: 0.70625*width, y: 0.5*height), control1: CGPoint(x: 0.6139087297*width, y: 0.70625*height), control2: CGPoint(x: 0.70625*width, y: 0.6139087297*height))
        _hole2.addLine(to: CGPoint(x: 0.875*width, y: 0.5*height))
        _hole2.addCurve(to: CGPoint(x: 0.5*width, y: 0.875*height), control1: CGPoint(x: 0.875*width, y: 0.7071067812*height), control2: CGPoint(x: 0.7071067812*width, y: 0.875*height))
        _hole2.addCurve(to: CGPoint(x: 0.125*width, y: 0.5*height), control1: CGPoint(x: 0.2928932188*width, y: 0.875*height), control2: CGPoint(x: 0.125*width, y: 0.7071067812*height))
        _hole2.addCurve(to: CGPoint(x: 0.5*width, y: 0.125*height), control1: CGPoint(x: 0.125*width, y: 0.2928932188*height), control2: CGPoint(x: 0.2928932188*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.5*width, y: 0.29375*height))
        _hole2.addCurve(to: CGPoint(x: 0.29375*width, y: 0.5*height), control1: CGPoint(x: 0.3860912703*width, y: 0.29375*height), control2: CGPoint(x: 0.29375*width, y: 0.3860912703*height))
        _hole2.addCurve(to: CGPoint(x: 0.5*width, y: 0.70625*height), control1: CGPoint(x: 0.29375*width, y: 0.6139087297*height), control2: CGPoint(x: 0.3860912703*width, y: 0.70625*height))
        path.addReversedPath(_hole2)
        var _hole4 = Path()
        _hole4.move(to: CGPoint(x: 0.70625*width, y: 0.5*height))
        _hole4.addLine(to: CGPoint(x: 0.5*width, y: 0.5*height))
        _hole4.addLine(to: CGPoint(x: 0.5*width, y: 0.29375*height))
        _hole4.addLine(to: CGPoint(x: 0.70625*width, y: 0.29375*height))
        _hole4.closeSubpath()
        path.addReversedPath(_hole4)
        return path
    }
}