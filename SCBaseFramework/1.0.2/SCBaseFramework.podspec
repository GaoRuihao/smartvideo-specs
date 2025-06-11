
Pod::Spec.new do |spec|

  spec.name         = "SCBaseFramework"
  spec.version      = "1.0.2"
  spec.summary      = "baseFramework For other module"
  spec.homepage     = "https://github.com/GaoRuihao/SCBaseFramework.git"
  spec.license      = "MIT"
  spec.author             = { "xisuo" => "xiaoxisuo@gmail.com" }
  spec.platform     = :ios, "13.0"
  spec.source       = { :http => "https://github.com/GaoRuihao/resource/releases/download/1.0.0/SCBaseFramework-1.0.2.zip" }

  spec.dependency 'AFNetworking'
  spec.dependency 'SVProgressHUD'
  spec.dependency 'YYModel'
  spec.dependency 'Masonry'
  spec.frameworks = 'Foundation','UIKit'

  spec.vendored_frameworks = "SCBaseFramework.framework"

  spec.pod_target_xcconfig = { 'ENABLE_BITCODE' => 'YES' }
  spec.pod_target_xcconfig = { 'VALID_ARCHS' => 'armv7 arm64' }

end
