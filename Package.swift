// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "TensorFlowLiteC",
    products: [
        .library(
            name: "TensorFlowLiteC",
            targets: [
                "TensorFlowLiteC",
                "TensorFlowLiteCCoreML",
                "TensorFlowLiteCMetal",
                "Link",
            ]
        ),
    ],
    targets: [
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/2.9.1/TensorFlowLiteC.xcframework.zip", checksum: ""),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/2.9.1/TensorFlowLiteCCoreML.xcframework.zip", checksum: ""),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/2.9.1/TensorFlowLiteCMetal.xcframework.zip", checksum: ""),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
