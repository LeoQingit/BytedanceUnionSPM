// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BytedanceUnionSPM",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "BytedanceUnionSPM",
            targets: ["BUAdSDK", "BUFoundation"]),
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(name: "BUAdSDK", path: "BUAdSDK.xcframework"),
        .binaryTarget(name: "BUFoundation", path: "BUFoundation.xcframework"),
        .testTarget(
            name: "BytedanceUnionSPMTests",
            dependencies: ["BUFoundation", "BUAdSDK"]),
    ]
)
