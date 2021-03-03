Pod::Spec.new do |s|
  s.name             = 'SLJGSDK'
  s.version          = '0.0.1'
  s.summary          = '极光模块'
  s.description      = '极光统计/分享/推送'
  s.homepage         = 'https://github.com/2NU71AN9/SLJGSDK'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '2UN7' => '1491859758@qq.com' }
  s.source           = { :git => 'https://github.com/2NU71AN9/SLJGSDK.git' }
  s.ios.deployment_target = '11.0'

#  s.public_header_files = 'SLJGSDK/SLJGSDK.h'
  s.vendored_frameworks = 'Products/SLJGSDK.framework'
  
  s.subspec 'JGSDK' do |ss|
    ss.vendored_libraries = 'SLJGSDK/*.a'
    ss.frameworks = 'CoreGraphics', 'CoreLocation', 'StoreKit', 'AppTrackingTransparency', 'WebKit', 'UserNotifications', 'Security', 'SystemConfiguration', 'CoreTelephony', 'CoreFoundation', 'CFNetwork', 'UIKit', 'Foundation'
    ss.libraries = 'sqlite3', 'resolv', 'z'
  end
end
