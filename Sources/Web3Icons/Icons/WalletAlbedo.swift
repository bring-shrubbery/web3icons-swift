// GENERATED FROM @web3icons/core@4.0.61 — DO NOT EDIT
import SwiftUI

internal struct WalletAlbedo: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.83275*width, y: 0.8745833333*height))
        _hole2.addLine(to: CGPoint(x: 0.8317916667*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.7867916667*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.7225*width, y: 0.7229166667*height))
        _hole2.addCurve(to: CGPoint(x: 0.31625*width, y: 0.725*height), control1: CGPoint(x: 0.5910771785*width, y: 0.7687353021*height), control2: CGPoint(x: 0.4481358316*width, y: 0.7694683346*height))
        _hole2.addLine(to: CGPoint(x: 0.25275*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.1681666667*width, y: 0.875*height))
        _hole2.addLine(to: CGPoint(x: 0.1672083333*width, y: 0.8745833333*height))
        _hole2.addLine(to: CGPoint(x: 0.4843333333*width, y: 0.125*height))
        _hole2.addLine(to: CGPoint(x: 0.5156666667*width, y: 0.125*height))
        _hole2.closeSubpath()
        _hole2.move(to: CGPoint(x: 0.5162916667*width, y: 0.7294583333*height))
        _hole2.addCurve(to: CGPoint(x: 0.7114166667*width, y: 0.69675*height), control1: CGPoint(x: 0.5826666667*width, y: 0.7294583333*height), control2: CGPoint(x: 0.648625*width, y: 0.7184166667*height))
        _hole2.addLine(to: CGPoint(x: 0.5198333333*width, y: 0.243875*height))
        _hole2.addLine(to: CGPoint(x: 0.3273333333*width, y: 0.69875*height))
        _hole2.addCurve(to: CGPoint(x: 0.5162916667*width, y: 0.7294583333*height), control1: CGPoint(x: 0.388252592*width, y: 0.7191038543*height), control2: CGPoint(x: 0.4520621157*width, y: 0.7294737813*height))
        path.addReversedPath(_hole2)
        return path
    }
}