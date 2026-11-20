// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "AnyThinkMediationSigmobAdapter",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AnyThinkMediationSigmobAdapter",
            targets: ["AnyThinkMediationSigmobAdapterTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/taku-packages/AnyThinkiOS_SPM.git", from: "6.5.60"),
        .package(url: "https://github.com/Sigmob/sigmob-adsdk-ios-spm.git", exact: "5.2.3")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkSigmobAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/AnyThink_Release/iosnetwork_2/AnyThinkSigmobAdapter/50203.2.10/AnyThinkSigmobAdapter-50203.2.10.zip",
            checksum: "483e2a5be8ba6787bba74b0e4f5e8301f3876faf3873bd6d8a49c0661560de34"
        ),
        .target(
            name: "AnyThinkMediationSigmobAdapterTarget",
            dependencies: [
                "AnyThinkSigmobAdapter",
                .product(name: "AnyThinkiOS", package: "AnyThinkiOS_SPM"),
                .product(name: "WindSDK", package: "sigmob-adsdk-ios-spm")
            ],
            path: "Sources/AnyThinkMediationSigmobAdapterTarget"
        )
    ]
)
