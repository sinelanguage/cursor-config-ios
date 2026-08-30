// swift-tools-version: 6.2

import PackageDescription

let package = Package(
  name: "AppCore",
  platforms: [
    .iOS(.v26),
    .macOS(.v26),
    .tvOS(.v26)
  ],
  products: [
    .library(name: "AppCore", targets: ["AppCore"])
  ],
  targets: [
    .target(
      name: "AppCore",
      path: "Sources/AppCore"
    ),
    .testTarget(
      name: "AppCoreTests",
      dependencies: ["AppCore"],
      path: "Tests/AppCoreTests"
    )
  ],
  swiftLanguageModes: [.v6]
)
