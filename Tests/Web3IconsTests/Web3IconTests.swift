import Testing
import Foundation
@testable import Web3Icons

@Test func haveLotsOfIcons() {
    #expect(Web3Icon.allCases.count > 1500)
}

@Test func iconRawValuesAreUnique() {
    let raws = Web3Icon.allCases.map(\.rawValue)
    #expect(raws.count == Set(raws).count)
}

@Test func everyRawValueIsCategoryPrefixed() {
    let prefixes = ["token/", "network/", "wallet/", "exchange/"]
    for icon in Web3Icon.allCases {
        #expect(prefixes.contains { icon.rawValue.hasPrefix($0) })
    }
}

@Test func versionConstantIsPopulated() {
    #expect(!Web3IconsVersion.web3icons.isEmpty)
    #expect(Web3IconsVersion.web3icons.contains("."))
}

// The Swift constant and the JSON state file are both written by
// Tools/generate-icons.mjs; this guards against a manual edit drifting one.
@Test func versionConstantMatchesJsonFile() throws {
    let repoRoot = URL(fileURLWithPath: #filePath)
        .deletingLastPathComponent()  // Tests/Web3IconsTests
        .deletingLastPathComponent()  // Tests
        .deletingLastPathComponent()  // repo root
    let versionFile = repoRoot.appendingPathComponent("Tools/web3icons-version.json")
    let data = try Data(contentsOf: versionFile)
    let decoded = try JSONDecoder().decode([String: String].self, from: data)
    #expect(decoded["version"] == Web3IconsVersion.web3icons)
}
