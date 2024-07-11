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
        .package(url: "https://github.com/Wasim2708/ZohoDeskPortalUIKitPackage.git", exact: "1.0.0"),
        .package(url: "https://github.com/Wasim2708/ZohoDeskPortalKBPackage.git", exact: "1.0.0"),
        .package(url: "https://github.com/Wasim2708/ZohoDeskPortalCommunityPackage.git", exact: "1.0.0"),
        .package(url: "https://github.com/Wasim2708/ZohoDeskPortalTicketPackage.git", exact: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "ZohoDeskPortalCorePackage",
            dependencies: [
                .product(name: "ZohoDeskPortalUIKitPackage", package: "ZohoDeskPortalUIKitPackage"),
                .product(name: "ZohoDeskPortalKBPackage", package: "ZohoDeskPortalKBPackage"),
                .product(name: "ZohoDeskPortalCommunityPackage", package: "ZohoDeskPortalCommunityPackage"),
                .product(name: "ZohoDeskPortalTicketPackage", package: "ZohoDeskPortalTicketPackage")
            ]
        ),
        .binaryTarget(name: "ZohoDeskPortalCore", url: "https://maven.zohodl.com/ZohoDesk/ZohoDeskPortalCore/3.0.12/ZohoDeskPortalCore.zip", checksum: "3dd836be47ccf5b5ff190e759c46d0a970d3fb4a34d075bd1d2c1887d93afd9b")
    ]
)
