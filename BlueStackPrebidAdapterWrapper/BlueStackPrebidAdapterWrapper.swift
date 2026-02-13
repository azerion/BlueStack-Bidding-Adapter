// This is a wrapper target to properly link dependencies for BlueStackPrebidAdapter
// The actual implementation is in the BlueStackPrebidAdapter.xcframework

import Foundation

// This file exists to create a target that can depend on both the binary framework
// and the SPM dependency (PrebidMobile).
// The dependencies are linked at the target level in Package.swift.
