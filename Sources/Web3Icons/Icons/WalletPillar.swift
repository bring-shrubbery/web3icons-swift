// GENERATED FROM @web3icons/core@4.0.51 — DO NOT EDIT
import SwiftUI

internal struct WalletPillar: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.3806666667*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.2375*width, y: 0.734375*height))
        _hole2.addLine(to: CGPoint(x: 0.2375*width, y: 0.59375*height))
        _hole2.addLine(to: CGPoint(x: 0.6193333333*width, y: 0.59375*height))
        _hole2.addLine(to: CGPoint(x: 0.6193333333*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.7625*width, y: 0.265625*height))
        _hole2.addLine(to: CGPoint(x: 0.7625*width, y: 0.734375*height))
        _hole2.addLine(to: CGPoint(x: 0.3806666667*width, y: 0.734375*height))
        _hole2.closeSubpath()
        path.addReversedPath(_hole2)
        var _hole4 = Path()
        _hole4.move(to: CGPoint(x: 0.4284166667*width, y: 0.40625*height))
        _hole4.addLine(to: CGPoint(x: 0.2375*width, y: 0.40625*height))
        _hole4.addLine(to: CGPoint(x: 0.2375*width, y: 0.21875*height))
        _hole4.addLine(to: CGPoint(x: 0.4284166667*width, y: 0.21875*height))
        _hole4.closeSubpath()
        path.addReversedPath(_hole4)
        return path
    }
}