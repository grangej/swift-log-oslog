// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LoggingOSLog",
    platforms: [
        .iOS(.v11),
        .macOS(.v12)
    ],
    products: [
        .library(
            name: "LoggingOSLog",
            targets: ["LoggingOSLog"]),
    ],
    dependencies: [
        .package(name: "swift-log", url: "https://github.com/apple/swift-log.git", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "LoggingOSLog",
            dependencies: [
                .product(name: "Logging", package: "swift-log"),
            ]),
        .testTarget(
            name: "LoggingOSLogTests",
            dependencies: ["LoggingOSLog"]),
    ]
)
