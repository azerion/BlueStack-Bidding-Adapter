// This is a wrapper target to properly link dependencies for BlueStackPrebidAdapter
// The actual implementation is in the BlueStackPrebidAdapter.xcframework

import Foundation

// Re-export the framework so it's available to consumers
@_exported import BlueStackPrebidAdapter
