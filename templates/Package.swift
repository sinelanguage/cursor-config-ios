// swift-tools-version: 5.10

import PackageDescription

let package = Package(
  name: "AppCore",
  platforms: [
    .iOS(.v18),
    .macOS(.v15),
    .tvOS(.v18)
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
  ]
)
