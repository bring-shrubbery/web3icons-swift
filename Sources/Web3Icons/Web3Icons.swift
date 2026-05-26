import SwiftUI

/// A web3icons mono icon as a SwiftUI view. The icon is a filled `Shape`; its
/// color comes from `.foregroundStyle` and its size from `.frame` (it keeps a
/// 1:1 aspect ratio).
///
///     Web3Icons(.tokenBTC)
///         .foregroundStyle(.orange)
///         .frame(width: 32, height: 32)
public struct Web3Icons: View {
    private let icon: Web3Icon

    public init(_ icon: Web3Icon) {
        self.icon = icon
    }

    /// Look up an icon by its raw value, e.g. `"token/BTC"`,
    /// `"network/ethereum"`. Returns `nil` if no icon matches.
    public init?(_ rawValue: String) {
        guard let icon = Web3Icon(rawValue: rawValue) else { return nil }
        self.init(icon)
    }

    public var body: some View {
        // web3icons mono are solid filled shapes (svg-to-swiftui-core reverses
        // inner contours, so non-zero winding renders holes correctly).
        IconShape(icon: icon)
            .fill(style: FillStyle(eoFill: false))
            .aspectRatio(1, contentMode: .fit)
    }
}

private struct IconShape: Shape {
    let icon: Web3Icon
    func path(in rect: CGRect) -> Path { icon.makePath(in: rect) }
}
