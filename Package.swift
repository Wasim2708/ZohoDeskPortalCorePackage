// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ZohoDeskPortalCorePackage",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ZohoDeskPortalCorePackage",
            targets: ["ZohoDeskPortalCorePackage"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Wasim2708/ZohoDeskPortalUIKitPackage.git", exact: "1.0.0"),
        .package(url: "https://github.com/Wasim2708/ZohoDeskPortalKBPackage.git", exact: "1.0.1"),
        .package(url: "https://github.com/Wasim2708/ZohoDeskPortalCommunityPackage.git", exact: "1.0.1"),
        .package(url: "https://github.com/Wasim2708/ZohoDeskPortalTicketPackage.git", exact: "1.0.1"),
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
        )
    ]
)
