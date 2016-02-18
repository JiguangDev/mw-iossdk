Pod::Spec.new do |s|

  s.name         = "MagicWindowSDK"
  s.version      = "3.66.02"
  s.summary      = "MagicWindowSDK for Cocoapods convenience."
  s.homepage     = "http://magicwindow.cn/"
  s.license      = "MIT"
  s.author       = { "MagicWindow" => "support@magicwindow.cn" }
  s.source       = { :git => "https://github.com/magicwindow/mw-iossdk.git", :tag => "#{s.version}" }
  s.platform     = :ios, "7.0"
  s.source_files = "MagicWindowSDK/*.{h,m}"
  s.public_header_files = "MagicWindowSDK/*.h"
  s.resource     = "MagicWindowSDK/MagicWindow.bundle"
  s.preserve_paths = "MagicWindowSDK/libMagicWindowSDK.a"
  s.vendored_libraries = "MagicWindowSDK/libMagicWindowSDK.a"
  s.requires_arc = true
  s.xcconfig = {
    'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/MagicWindowSDK/MagicWindowSDK"',
    'HEADER_SEARCH_PATHS' => '"$(PODS_ROOT)/MagicWindowSDK/MagicWindowSDK"'
  }
  s.frameworks = "AdSupport","CoreTelephony","CoreGraphics","CoreFoundation","SystemConfiguration","CoreLocation"
  s.libraries = "z","sqlite3.0"
  s.dependency "libWeChatSDK"

end