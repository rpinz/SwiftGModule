// swift-tools-version:5.0

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
        .v5
    ]
)
