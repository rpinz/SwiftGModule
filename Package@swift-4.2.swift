// swift-tools-version:4.2

import PackageDescription

let package = Package(
    name: "GModule",
    products: [
        .library(
            name: "GModule",
            targets: ["GModule"])
    ],
    dependencies: [
        .package(
            url: "https://github.com/rpinz/SwiftGLib",
            .branch("master"))
    ],
    targets: [
        .target(
            name: "GModule",
            dependencies: ["GLib"],
            path: "Sources"),
        .testTarget(
            name: "GModuleTests",
            dependencies: ["GModule"])
    ],
    swiftLanguageVersions: [
        .v4,
        .v4_2
    ]
)
