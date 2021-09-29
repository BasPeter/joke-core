// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "joke-core",
    platforms: [
        .macOS(.v10_15),
    ],
    products: [
        .library(
            name: "JokeCore",
            targets: ["JokeCore"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "4.0.0"),
        
    ],
    targets: [
        .target(
            name: "JokeCore",
            dependencies: [
                .product(name: "Vapor", package: "vapor"),
            ],
            swiftSettings: [
                .unsafeFlags(["-cross-module-optimization"], .when(configuration: .release))
            ]),
        .testTarget(
            name: "JokeCoreTests",
            dependencies: ["JokeCore"]),
    ]
)
