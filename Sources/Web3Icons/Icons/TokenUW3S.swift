// GENERATED FROM @web3icons/core@4.0.55 — DO NOT EDIT
import SwiftUI

internal struct TokenUW3S: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        var _hole2 = Path()
        _hole2.move(to: CGPoint(x: 0.6312083333*width, y: 0.3591666667*height))
        _hole2.addLine(to: CGPoint(x: 0.3591666667*width, y: 0.3591666667*height))
        _hole2.addLine(to: CGPoint(x: 0.3591666667*width, y: 0.6311666667*height))
        _hole2.addCurve(to: CGPoint(x: 0.140862415*width, y: 0.4664307561*height), control1: CGPoint(x: 0.2604780453*width, y: 0.6235823428*height), control2: CGPoint(x: 0.1752295434*width, y: 0.5592524478*height))
        _hole2.addCurve(to: CGPoint(x: 0.19925*width, y: 0.19925*height), control1: CGPoint(x: 0.1064952866*width, y: 0.3736090645*height), control2: CGPoint(x: 0.1292958236*width, y: 0.2692741327*height))
        _hole2.addCurve(to: CGPoint(x: 0.4664509087*width, y: 0.1408079851*height), control1: CGPoint(x: 0.2692608075*width, y: 0.129259129*height), control2: CGPoint(x: 0.3736137311*width, y: 0.1064351231*height))
        _hole2.addCurve(to: CGPoint(x: 0.6311666667*width, y: 0.3591666667*height), control1: CGPoint(x: 0.5592880864*width, y: 0.1751808472*height), control2: CGPoint(x: 0.6236163515*width, y: 0.260458876*height))
        path.addReversedPath(_hole2)
        var _hole4 = Path()
        _hole4.move(to: CGPoint(x: 0.3680833333*width, y: 0.6269583333*height))
        _hole4.addCurve(to: CGPoint(x: 0.554250394*width, y: 0.5479821663*height), control1: CGPoint(x: 0.4382858898*width, y: 0.6269911338*height), control2: CGPoint(x: 0.5054855541*width, y: 0.5984835563*height))
        _hole4.addCurve(to: CGPoint(x: 0.6266666667*width, y: 0.3591666667*height), control1: CGPoint(x: 0.603015234*width, y: 0.4974807763*height), control2: CGPoint(x: 0.6291549237*width, y: 0.4293251201*height))
        _hole4.addLine(to: CGPoint(x: 0.875*width, y: 0.3591666667*height))
        _hole4.addLine(to: CGPoint(x: 0.875*width, y: 0.875*height))
        _hole4.addLine(to: CGPoint(x: 0.3591666667*width, y: 0.875*height))
        _hole4.addLine(to: CGPoint(x: 0.3591666667*width, y: 0.6265*height))
        _hole4.closeSubpath()
        path.addReversedPath(_hole4)
        return path
    }
}