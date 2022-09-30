// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "TensorFlowLiteC",
    products: [
        .library(
            name: "TensorFlowLiteC",
            targets: [
                "TensorFlowLiteC",
//                "Link",
            ]
        ),
    ],
    targets: [
        .binaryTarget(name: "TensorFlowLiteC", path: "./Framework/TensorFlowLiteC.xcframework"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
