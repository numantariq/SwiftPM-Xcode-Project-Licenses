// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "SwiftPMLicensesGenerator",
    products: [
        .library(name: "GenerateLicenses", targets: ["LicensesGenerator"]),
    ],
    targets: [
        .target(
            name: "LicensesGenerator",
            resources: [
                .process("generate-licenses.py")
            ]
        )
    ]
)
