
Pod::Spec.new do |spec|

  spec.name         = "SCCameraFramework"
  spec.version      = "1.0.7"
  spec.summary      = "CameraFramework"
  spec.homepage     = "https://github.com/GaoRuihao/CameraSDK"
  spec.license      = "MIT"
  spec.author       = { "xisuo" => "xiaoxisuo@gmail.com" }
  spec.platform     = :ios, "11.0"
  spec.source       = { :http => "https://github.com/GaoRuihao/resource/releases/download/1.0.4/SCCameraFramework-1.0.7.zip" }

 spec.dependency 'SVProgressHUD'
 spec.dependency 'Masonry'
 spec.dependency 'TTTAttributedLabel'
 spec.dependency 'SDWebImage'
 spec.dependency 'YYModel'
 spec.dependency 'MJRefresh'
 spec.dependency 'KVOController'
 spec.dependency 'AFNetworking'
 spec.dependency 'RealReachability'

  spec.frameworks = 'Foundation','UIKit','VideoToolbox','AudioToolbox'
  spec.libraries = 'z','bz2','iconv','c++','c'
  spec.prefix_header_file = 'SCCameraFramework/Common/LMCAPrefixHeader.pch'

  spec.vendored_frameworks = 'SCCameraFramework.framework'

  # spec.resource =  'SCCameraFramework/SCCameraFramework.bundle'

  spec.pod_target_xcconfig = { 'ENABLE_BITCODE' => 'YES'}
  spec.pod_target_xcconfig = { 'VALID_ARCHS' => 'armv7 arm64' }

end
