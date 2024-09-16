// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ZohoDeskPortalCorePackage",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ZohoDeskPortalCorePackage",
            targets: ["ZohoDeskPortalCorePackage", "ZohoDeskPortalCore"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Wasim2708/ZohoDeskPortalUIKitPackage.git", exact: "1.0.2"),
        .package(url: "https://github.com/Wasim2708/ZohoDeskPortalKBPackage.git", exact: "1.0.2"),
        .package(url: "https://github.com/Wasim2708/ZohoDeskPortalCommunityPackage.git", exact: "1.0.2"),
        .package(url: "https://github.com/Wasim2708/ZohoDeskPortalTicketPackage.git", exact: "1.0.2"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(name: "ZohoDeskPortalCore", url: "https://maven.zohodl.com/ZohoDesk/ZohoDeskPortalCore/4.0.0-beta.2/ZohoDeskPortalCore.zip", checksum: "866f5bbb9c369d166b364880ec0a32abdd10dd8b248c0eeabcf38fbb792949e9"),
        .target(
            name: "ZohoDeskPortalCorePackage",
            dependencies: [
                .product(name: "ZohoDeskPortalUIKitPackage", package: "ZohoDeskPortalUIKitPackage"),
                .product(name: "ZohoDeskPortalKBPackage", package: "ZohoDeskPortalKBPackage"),
                .product(name: "ZohoDeskPortalCommunityPackage", package: "ZohoDeskPortalCommunityPackage"),
                .product(name: "ZohoDeskPortalTicketPackage", package: "ZohoDeskPortalTicketPackage")
            ]
        )
    ]
)
