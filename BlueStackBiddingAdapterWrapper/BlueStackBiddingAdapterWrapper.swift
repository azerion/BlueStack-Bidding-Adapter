// This is a wrapper target to properly link dependencies for BlueStackBiddingAdapter
// The actual implementation is in the BlueStackBiddingAdapter.xcframework

import Foundation

// This file exists to create a target that can depend on both the binary frameworks
// and the SPM dependencies (BlueStackSDK, PrebidMobile).
// The dependencies are linked at the target level in Package.swift.
