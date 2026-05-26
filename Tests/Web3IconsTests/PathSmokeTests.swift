import Testing
import SwiftUI
@testable import Web3Icons

private let rect = CGRect(x: 0, y: 0, width: 24, height: 24)

@Test func tokenPathIsNonEmpty() {
    #expect(!Web3Icon.tokenBTC.makePath(in: rect).isEmpty)
}

@Test func networkPathIsNonEmpty() {
    #expect(!Web3Icon.networkEthereum.makePath(in: rect).isEmpty)
}

@Test func walletPathIsNonEmpty() {
    #expect(!Web3Icon.walletPhantom.makePath(in: rect).isEmpty)
}

@Test func exchangePathIsNonEmpty() {
    #expect(!Web3Icon.exchangeUniswap.makePath(in: rect).isEmpty)
}

// networkEthereum combines four paths with fill-rule="evenodd"; exercises the
// multi-contour / hole handling in the generated output.
@Test func multiPathEvenoddIconRenders() {
    #expect(!Web3Icon.networkEthereum.makePath(in: rect).isEmpty)
}

// apechain's source SVG uses strokes, so its generated path calls
// Path.cwStrokedPath(_:)/ccwStrokedPath(_:) from PathExtensions.swift. If this
// fails after a regen, the helper extension has drifted from what
// svg-to-swiftui-core emits.
@Test func strokedPathIconRenders() {
    #expect(!Web3Icon.networkApechain.makePath(in: rect).isEmpty)
}
