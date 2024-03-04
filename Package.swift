// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "SelfSignedCert",
    platforms: [
        .macOS(.v10_15), .iOS(.v12), .tvOS(.v13), .visionOS(.v1)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SelfSignedCert",
            targets: ["SelfSignedCert"]
        )
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/iosdevzone/IDZSwiftCommonCrypto", from: "0.13.1"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "SelfSignedCert",
            dependencies: ["IDZSwiftCommonCrypto"],
            path: "SelfSignedCert",
            exclude: ["Info.plist"]
        )
    ]
)
