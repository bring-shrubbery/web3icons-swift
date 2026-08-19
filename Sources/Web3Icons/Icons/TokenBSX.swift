// GENERATED FROM @web3icons/core@4.0.55 — DO NOT EDIT
import SwiftUI

internal struct TokenBSX: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.5*width, y: 0.875*height))
        _hole2.addCurve(to: CGPoint(x: 0.125*width, y: 0.5*height), control1: CGPoint(x: 0.2928932188*width, y: 0.875*height), control2: CGPoint(x: 0.125*width, y: 0.7071067812*height))
        _hole2.addCurve(to: CGPoint(x: 0.5*width, y: 0.125*height), control1: CGPoint(x: 0.125*width, y: 0.2928932188*height), control2: CGPoint(x: 0.2928932188*width, y: 0.125*height))
        _hole2.addCurve(to: CGPoint(x: 0.875*width, y: 0.5*height), control1: CGPoint(x: 0.7071067812*width, y: 0.125*height), control2: CGPoint(x: 0.875*width, y: 0.2928932188*height))
        _hole2.addCurve(to: CGPoint(x: 0.5*width, y: 0.875*height), control1: CGPoint(x: 0.875*width, y: 0.7071067812*height), control2: CGPoint(x: 0.7071067812*width, y: 0.875*height))
        _hole2.move(to: CGPoint(x: 0.3827916667*width, y: 0.5*height))
        _hole2.addCurve(to: CGPoint(x: 0.5*width, y: 0.828125*height), control1: CGPoint(x: 0.3834353628*width, y: 0.6195169101*height), control2: CGPoint(x: 0.4247755338*width, y: 0.7352488144*height))
        _hole2.addCurve(to: CGPoint(x: 0.6172083333*width, y: 0.5*height), control1: CGPoint(x: 0.601*width, y: 0.7058333333*height), control2: CGPoint(x: 0.6172083333*width, y: 0.5670416667*height))
        _hole2.addCurve(to: CGPoint(x: 0.5*width, y: 0.171875*height), control1: CGPoint(x: 0.6172083333*width, y: 0.4329583333*height), control2: CGPoint(x: 0.601*width, y: 0.2942083333*height))
        _hole2.addCurve(to: CGPoint(x: 0.3827916667*width, y: 0.5*height), control1: CGPoint(x: 0.399*width, y: 0.2942083333*height), control2: CGPoint(x: 0.3827916667*width, y: 0.4329583333*height))
        path.addReversedPath(_hole2)
        return path
    }
}