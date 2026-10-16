// swift-tools-version: 5.9
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
        .package(url: "https://github.com/TakuMediation-packages/AnyThinkiOS_SPM.git", from: "6.5.60"),
        .package(url: "https://github.com/Sigmob/sigmob-adsdk-ios-spm.git", exact: "5.2.0")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkSigmobAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/AnyThink_Release/iosnetwork_2/AnyThinkSigmobAdapter/5.2.0.2.0/AnyThinkSigmobAdapter-5.2.0.2.0.zip",
            // NOTE: Checksum should be updated with `swift package compute-checksum <zip>` once adapter 5.2.0.2.0 is packaged and uploaded to OSS.
            checksum: "478fd71dd56b70a90a600debd4e4e1bcfdf4339f777a690e3886b4e138a3ef47"
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
