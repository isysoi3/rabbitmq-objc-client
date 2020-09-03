// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RMQClient",
    products: [
        .library(
            name: "RMQClient",
            targets: ["RMQClient"]),
    ],
    dependencies: [
        .package(url: "https://github.com/robbiehanson/CocoaAsyncSocket.git", from: "7.6.3"),
        .package(url: "https://github.com/isysoi3/JKVValue.git", .branch("spm_support"))
    ],
    targets: [
        .target(
            name: "RMQClient",
            dependencies: [],
            path: "RMQClient/",
            sources: ["RMQClient/"]
        ),
        .testTarget(
            name: "RMQClientTests",
            dependencies: []),
        .testTarget(
            name: "RMQClientIntegrationTests",
            dependencies: [])
    ]
)
