// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CoreModule",
    platforms: [.iOS(.v10), .macOS(.v10_13), .tvOS(.v10), .watchOS(.v2)],

    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "CoreModule",
            targets: ["CoreModule"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(name: "APIClientModule", url: "https://github.com/iOS-App-Development/APIClientModule.git", .branch("master")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "CoreModule",
            dependencies: ["APIClientModule"]),
        .testTarget(
            name: "CoreModuleTests",
            dependencies: ["CoreModule","APIClientModule"]),
    ]
)
