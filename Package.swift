// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "CLibavformat",
    pkgConfig: "libavformat",
    providers: [
        .apt(["ffmpeg"])
    ],
    products: [
        .library(
            name: "CLibavformat",
            targets: ["CLibavformat"]),
        ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "CLibavformat",
            dependencies: []
        )
    ]
)
