import Testing
import SwiftUI
import CoreGraphics
import Foundation
import ImageIO
@testable import Web3Icons

// Pixel snapshot tests for every web3icon. Renders each icon's Path through
// CoreGraphics with a non-zero (winding) fill — the same fill the Web3Icons
// View applies (black on white) — and compares the resulting PNG bytes against
// a committed baseline under __Snapshots__/.
//
// Recording mode: set SNAPSHOT_RECORD=1 to (re)write every baseline. Recording
// is silent so it can run as a pipeline step after generator regeneration.
//
// Compare mode (default): a missing baseline records an Issue and fails; a byte
// mismatch fails with a hint about SNAPSHOT_RECORD.

private let snapshotDir = URL(fileURLWithPath: #filePath)
    .deletingLastPathComponent()
    .appendingPathComponent("__Snapshots__", isDirectory: true)

private let renderSize = 64

private enum RenderError: Error {
    case contextFailed
    case imageFailed
    case encodeFailed
}

private func renderPNG(for icon: Web3Icon) throws -> Data {
    let size = renderSize
    let rect = CGRect(x: 0, y: 0, width: CGFloat(size), height: CGFloat(size))
    let path = icon.makePath(in: rect)

    let colorSpace = CGColorSpaceCreateDeviceRGB()
    guard let ctx = CGContext(
        data: nil,
        width: size,
        height: size,
        bitsPerComponent: 8,
        bytesPerRow: size * 4,
        space: colorSpace,
        bitmapInfo: CGImageAlphaInfo.premultipliedLast.rawValue
    ) else {
        throw RenderError.contextFailed
    }

    ctx.setFillColor(red: 1, green: 1, blue: 1, alpha: 1)
    ctx.fill(rect)

    // SVG/SwiftUI place origin at top-left; CGContext at bottom-left. Flip Y
    // so the rendered image matches what consumers actually see.
    ctx.translateBy(x: 0, y: CGFloat(size))
    ctx.scaleBy(x: 1, y: -1)

    // web3icons mono are filled shapes; fill with non-zero winding to match the
    // Web3Icons View (svg-to-swiftui-core reverses inner contours for holes).
    ctx.addPath(path.cgPath)
    ctx.setFillColor(red: 0, green: 0, blue: 0, alpha: 1)
    ctx.fillPath(using: .winding)

    guard let image = ctx.makeImage() else { throw RenderError.imageFailed }

    let data = NSMutableData()
    guard let dest = CGImageDestinationCreateWithData(data, "public.png" as CFString, 1, nil) else {
        throw RenderError.encodeFailed
    }
    CGImageDestinationAddImage(dest, image, nil)
    guard CGImageDestinationFinalize(dest) else { throw RenderError.encodeFailed }

    return data as Data
}

private func baselineName(for icon: Web3Icon) -> String {
    // Raw values look like "token/BTC"; "/" is illegal in filenames.
    icon.rawValue.replacingOccurrences(of: "/", with: "-")
}

private func assertSnapshot(_ icon: Web3Icon) throws {
    let name = baselineName(for: icon)
    let actual = try renderPNG(for: icon)
    let baselineURL = snapshotDir.appendingPathComponent("\(name).png")
    let record = ProcessInfo.processInfo.environment["SNAPSHOT_RECORD"] == "1"

    if record {
        try FileManager.default.createDirectory(at: snapshotDir, withIntermediateDirectories: true)
        try actual.write(to: baselineURL)
        return
    }

    guard FileManager.default.fileExists(atPath: baselineURL.path) else {
        Issue.record("No snapshot baseline for \(name). Run tests with SNAPSHOT_RECORD=1 to create one.")
        return
    }

    let expected = try Data(contentsOf: baselineURL)
    #expect(
        actual == expected,
        "Snapshot mismatch for \(name). Re-run with SNAPSHOT_RECORD=1 if the change is intentional."
    )
}

@Test(arguments: Web3Icon.allCases)
func snapshot(_ icon: Web3Icon) throws {
    try assertSnapshot(icon)
}
