// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BlueStackBiddingAdapter",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "BlueStackBiddingAdapter",
            targets: ["BlueStackBiddingAdapterTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/azerion/BlueStackSDK.git", from: "5.4.0")
    ],
    targets: [
        .target(
            name: "BlueStackBiddingAdapterTarget",
            dependencies: [
                .target(name: "BlueStackBiddingAdapter", condition: .when(platforms: [.iOS])),
                .target(name: "BlueStackPrebidAdapter", condition: .when(platforms: [.iOS])),
                .target(name: "PrebidMobile", condition: .when(platforms: [.iOS])),
                .target(name: "OMSDK_Prebidorg", condition: .when(platforms: [.iOS])),
                .product(name: "BlueStackSDK", package: "BlueStackSDK", condition: .when(platforms: [.iOS]))
            ],
            path: "BlueStackBiddingAdapterWrapper"
        ),
        .binaryTarget(
            name: "BlueStackBiddingAdapter",
            path: "BlueStackBiddingAdapter.xcframework"
        ),
        .binaryTarget(
            name: "BlueStackPrebidAdapter",
            path: "BlueStackPrebidAdapter.xcframework"
        ),
        .binaryTarget(
            name: "PrebidMobile",
            path: "XCPrebidMobile.xcframework"
        ),
        .binaryTarget(
            name: "OMSDK_Prebidorg",
            path: "OMSDK_Prebidorg.xcframework"
        )
    ]
)
