// swift-tools-version: 6.0

import PackageDescription

let package = Package(
  name: "AppCore",
  platforms: [
    .iOS(.v19),
    .macOS(.v16),
    .tvOS(.v19)
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
