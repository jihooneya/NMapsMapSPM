// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NMapsMapSPM",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "NMapsMapSPM",
            targets: ["NMapsMapSPM"]),
    ],
    targets: [
        
            .binaryTarget(
                name: "NMapsMap",
                path: "./Frameworks/NMapsMap.xcframework"
            ),
            .binaryTarget(
                name: "NMapsGeometry",
                path: "./Frameworks/NMapsGeometry.xcframework"
            ),
            .target(
                name: "NMapsMapSPM",
                dependencies: ["NMapsMap", "NMapsGeometry"]
            )

    ]
)
