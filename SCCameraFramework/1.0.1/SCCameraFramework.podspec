
Pod::Spec.new do |spec|

  spec.name         = "SCCameraFramework"
  spec.version      = "1.0.1"
  spec.summary      = "CameraFramework"
  spec.homepage     = "https://github.com/GaoRuihao/CameraSDK"
  spec.license      = "MIT"
  spec.author             = { "xisuo" => "xiaoxisuo@gmail.com" }
  spec.platform     = :ios, "11.0"
  spec.source       = { :git => "https://github.com/GaoRuihao/CameraSDK.git", :tag => "#{spec.version}" }

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


  if ENV['sdk']
    spec.header_dir = "SCCameraFramework"
    spec.source_files  = ["SCCameraFramework/*.{h,hpp,m,mm,cpp,c}","SCCameraFramework/Base/**/*.{h,hpp,m,mm,cpp,c}","SCCameraFramework/Camera/**/*.{h,hpp,m,mm,cpp,c}","SCCameraFramework/Common/**/*.{h,hpp,m,mm,cpp,c}"]

    spec.vendored_libraries = ["SCCameraFramework/Base/**/*.{a}","SCCameraFramework/Camera/**/*.{a}","SCCameraFramework/Common/**/*.{a}"]

    spec.subspec 'Framework' do |ss|
      ss.header_dir = "CameraP2PSDK"
      ss.vendored_framework = 'CameraP2PSDK.framework'
      ss.source_files  = "CameraP2PSDK.framework/**/*.{h,hpp,m,mm}"
    end

    spec.subspec 'ThirdSDK' do |ss|
      ss.header_dir = "SCCameraFramework"
      ss.private_header_files = ['SCCameraFramework/ThirdSDK/**/*.{h,m,mm,hpp,cpp,c,inl}']
      ss.source_files = 'SCCameraFramework/ThirdSDK/**/*.{h,m,mm,hpp,cpp,c,inl}'
      ss.vendored_libraries = 'SCCameraFramework/ThirdSDK/**/*.{a}'
      ss.libraries = 'c++','c'
    end

    private_header_path = [
    '${PODS_CONFIGURATION_BUILD_DIR}/SCCameraFramework/SCCameraFramework.framework/PrivateHeaders',
    '$(PODS_ROOT)/Headers/Private/SCCameraFramework',
    ]

    spec.user_target_xcconfig = { 'HEADER_SEARCH_PATHS' => private_header_path.join(' ') }
    spec.pod_target_xcconfig = { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES' }
#    spec.exclude_files = 'SCCameraFramework/**/*{.a}'
    #spec.exclude_files  = 'SCCameraFramework/Camera/Lock/Camera/Manager/WebRTC/libLMWebRTCStaticLib.a'
  else
    spec.vendored_frameworks = 'CameraP2PSDK.framework','SourceSDK/SCCameraFramework.framework'
  end

  spec.resource =  'SCCameraFramework/SCCameraFramework.bundle'

  spec.pod_target_xcconfig = { 'ENABLE_BITCODE' => 'YES'}
  spec.pod_target_xcconfig = { 'VALID_ARCHS' => 'armv7 arm64' }

end
