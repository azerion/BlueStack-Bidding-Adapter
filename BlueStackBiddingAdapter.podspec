Pod::Spec.new do |s|

s.authors = 'Azerion'
s.name = 'BlueStackBiddingAdapter'
s.version = '5.4.2'
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

s.dependency 'BlueStack-SDK', '>= 5.4.0', '< 5.5.0'

s.pod_target_xcconfig =
{
  'VALID_ARCHS' => 'arm64 arm64e armv7 armv7s x86_64',
  'VALID_ARCHS[sdk=iphoneos*]' => 'arm64 arm64e armv7 armv7s',
  'VALID_ARCHS[sdk=iphonesimulator*]' => 'arm64 arm64e x86_64',
  'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386'
}

s.default_subspec = 'Bidding'

s.subspec 'Bidding' do |bidding|
    bidding.vendored_frameworks = 'BlueStackBiddingAdapter.xcframework'
    bidding.dependency    'BlueStackBiddingAdapter/Prebid'
end
  
s.subspec 'Prebid' do |prebid|
    prebid.vendored_frameworks =    'BlueStackPrebidAdapter.xcframework'
    prebid.dependency               'PrebidMobile', '3.2.1'
end
  
end
  
