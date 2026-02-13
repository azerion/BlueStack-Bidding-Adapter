// This is a wrapper target to properly link dependencies for BlueStackBiddingAdapter
// The actual implementation is in the BlueStackBiddingAdapter.xcframework

import Foundation

// Re-export the frameworks so they're available to consumers
@_exported import BlueStackBiddingAdapter
@_exported import BlueStackPrebidAdapter
