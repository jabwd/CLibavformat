// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "CLibavformat",
    products: [
        .library(
            name: "CLibavformat",
            targets: ["CLibavformat"]),
    ],
    targets: [
        .systemLibrary(
            name: "CLibavformat",
            pkgConfig: "avformat",
            providers: [
                .brew(["ffmpeg"]),
                .apt(["ffmpeg"])
            ]
        )
    ]
)
