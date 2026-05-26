import Testing
import SwiftUI
@testable import Web3Icons

@Test func web3IconsIsConstructible() {
    let _ = Web3Icons(.tokenBTC)
}

@Test func stringInitResolvesKnownRawValue() {
    #expect(Web3Icons("token/BTC") != nil)
    #expect(Web3Icons("network/ethereum") != nil)
    #expect(Web3Icons("wallet/phantom") != nil)
    #expect(Web3Icons("exchange/uniswap") != nil)
}

@Test func stringInitReturnsNilForUnknownRawValue() {
    #expect(Web3Icons("definitely/not-a-real-icon") == nil)
    #expect(Web3Icons("BTC") == nil)   // missing category prefix
    #expect(Web3Icons("") == nil)
}

@Test func bodyProducesNonEmptyPathForRepresentativeIcons() {
    let rect = CGRect(x: 0, y: 0, width: 24, height: 24)
    #expect(!Web3Icon.tokenBTC.makePath(in: rect).isEmpty)
    #expect(!Web3Icon.networkEthereum.makePath(in: rect).isEmpty)
}
