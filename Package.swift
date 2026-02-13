// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BlueStackBiddingAdapter",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "BlueStackBiddingAdapter",
            targets: ["BlueStackBiddingAdapterTarget"]
        ),
        .library(
            name: "BlueStackBiddingAdapterBidding",
            targets: ["BlueStackBiddingAdapterTarget"]
        ),
        .library(
            name: "BlueStackBiddingAdapterPrebid",
            targets: ["BlueStackPrebidAdapterTarget"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/azerion/BlueStackSDK.git",
            from: "5.4.0"
        ),
        .package(
            url: "https://github.com/prebid/prebid-mobile-ios.git",
            exact: "3.2.0"
        )
    ],
    targets: [
        .target(
            name: "BlueStackBiddingAdapterTarget",
            dependencies: [
                .target(name: "BlueStackBiddingAdapter"),
                .target(name: "BlueStackPrebidAdapterTarget"),
                .product(name: "BlueStackSDK", package: "BlueStackSDK")
            ],
            path: "BlueStackBiddingAdapterWrapper"
        ),
        
        .target(
            name: "BlueStackPrebidAdapterTarget",
            dependencies: [
                .target(name: "BlueStackPrebidAdapter"),
                .product(name: "PrebidMobile", package: "prebid-mobile-ios")
            ],
            path: "BlueStackPrebidAdapterWrapper"
        ),
        
        .binaryTarget(
            name: "BlueStackBiddingAdapter",
            path: "BlueStackBiddingAdapter.xcframework"
        ),
        .binaryTarget(
            name: "BlueStackPrebidAdapter",
            path: "BlueStackPrebidAdapter.xcframework"
        )
    ]
)
