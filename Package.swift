// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BCrypt",
    products: [
        .library(
            name: "BCrypt",
            targets: [
                "BCrypt",
                "bcryptc",
            ]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "BCrypt",
            dependencies: [
                "bcryptc",
            ]
        ),
        .target(
            name: "bcryptc",
            dependencies: []
        ),
        .testTarget(
            name: "BCryptTests",
            dependencies: ["BCrypt"]
        ),
    ]
)
