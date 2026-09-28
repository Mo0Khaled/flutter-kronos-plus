// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "flutter_kronos_plus",
    platforms: [
        .iOS("12.0")
    ],
    products: [
        .library(name: "flutter-kronos-plus", targets: ["flutter_kronos_plus"])
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework"),
        .package(
            url: "https://github.com/MobileNativeFoundation/Kronos.git",
            exact: "4.3.1"
        )
    ],
    targets: [
        .target(
            name: "flutter_kronos_plus",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework"),
                .product(name: "Kronos", package: "Kronos")
            ]
        )
    ]
)
