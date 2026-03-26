// swift-tools-version:5.0

import PackageDescription

let package = Package(
  name: "JSONSchemaSwift",
  platforms: [
    .macOS(.v10_13),
  ],
  products: [
    .library(name: "JSONSchemaSwift", targets: ["JSONSchemaSwift"]),
  ],
  dependencies: [
    .package(url: "https://github.com/kylef/PathKit.git", from: "1.0.1"),
    .package(url: "https://github.com/kylef/Spectre.git", from: "0.10.1")
  ],
  targets: [
    .target(name: "JSONSchemaSwift", dependencies: [], path: "Sources"),
    .testTarget(name: "JSONSchemaSwiftTests", dependencies: ["JSONSchemaSwift", "Spectre", "PathKit"]),
  ]
)
