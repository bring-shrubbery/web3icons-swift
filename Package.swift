// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "web3icons-swift",
    platforms: [
        .iOS(.v17),
        .macOS(.v14),
    ],
    products: [
        .library(name: "Web3Icons", targets: ["Web3Icons"]),
    ],
    targets: [
        .target(name: "Web3Icons"),
        .testTarget(name: "Web3IconsTests", dependencies: ["Web3Icons"]),
    ]
)
