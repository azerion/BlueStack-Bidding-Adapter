Pod::Spec.new do |s|

s.authors = 'Azerion'
s.name = 'BlueStackBiddingAdapter'
s.version = '6.0.2'
s.static_framework = true
s.license = 'MIT'
s.platform = :ios, '13.0'
s.summary = 'BlueStack Bidding Adapter'
s.homepage = "https://developers.bluestack.app/"
s.swift_version = '5'
s.source_files = ["BlueStackBiddingAdapter.xcframework/*/*/Headers/*.{h,m,swift}"]

s.source = { :git => 'https://github.com/azerion/BlueStack-Bidding-Adapter.git', :tag => "#{s.version}" }
s.documentation_url = 'https://developers.bluestack.app/ios/mediation/primairy/supported-networks#Bidding'
s.vendored_frameworks = "BlueStackBiddingAdapter.xcframework"
s.ios.deployment_target = '13.0'

s.dependency 'BlueStack-SDK', '>=6.0.0', '< 6.1.0'
s.dependency 'PrebidMobile', '3.2.1'

s.pod_target_xcconfig =
{
  'VALID_ARCHS' => 'arm64 arm64e armv7 armv7s x86_64',
  'VALID_ARCHS[sdk=iphoneos*]' => 'arm64 arm64e armv7 armv7s',
  'VALID_ARCHS[sdk=iphonesimulator*]' => 'arm64 arm64e x86_64',
  'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386'
}

end
  
