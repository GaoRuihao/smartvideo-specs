#
#  Be sure to run `pod spec lint CameraP2PSDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  spec.name         = "CameraP2PSDK"
  spec.version      = "1.0.1"
  spec.summary      = "use for camera p2p connect"
  spec.description  = "use for camera p2p connect. do not use direct from this SDK"

  spec.homepage     = "https://github.com/GaoRuihao/P2P-ios"
  spec.license      = "MIT"
  spec.author             = { "xisuo" => "xiaoxisuo@gmail.com" }

  spec.platform     = :ios, "13.0"
  spec.source       = { :http => "https://github.com/GaoRuihao/resource/releases/download/1.0.4/CameraP2PSDK-1.0.2.zip" }

  spec.dependency 'YYModel'
  spec.frameworks = 'Foundation','UIKit'

  spec.vendored_frameworks = "CameraP2PSDK.framework"

  spec.pod_target_xcconfig = { 'ENABLE_BITCODE' => 'YES' }
  spec.pod_target_xcconfig = { 'VALID_ARCHS' => 'armv7 arm64' }

end
