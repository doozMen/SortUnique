// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SortUnique",
    products: [.executable(name: "sort-unique", targets: ["sort-unique"])],
    dependencies: [
    ],
    targets: [
        .target(name: "sort-unique", dependencies: ["SortUnique"]),
        .target(
            name: "SortUnique",
            dependencies: []),
        .testTarget(
            name: "SortUniqueTests",
            dependencies: ["SortUnique"]),
    ]
)
