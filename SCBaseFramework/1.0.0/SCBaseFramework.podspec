
Pod::Spec.new do |spec|

  spec.name         = "SCBaseFramework"
  spec.version      = "1.0.0"
  spec.summary      = "baseFramework For other module"
  spec.homepage     = "https://github.com/GaoRuihao/SCBaseFramework.git"
  spec.license      = "MIT"
  spec.author             = { "xisuo" => "xiaoxisuo@gmail.com" }
  spec.platform     = :ios, "13.0"
  spec.source       = { :git => "https://github.com/GaoRuihao/SCBaseFramework.git", :tag => "#{spec.version}" }

  spec.dependency 'AFNetworking','3.2.0'
  spec.dependency 'SVProgressHUD'
  spec.dependency 'YYModel'
  spec.dependency 'Masonry'
  spec.frameworks = 'Foundation','UIKit'

  if ENV['debug']
    spec.header_dir = "SCBaseFramework"
    spec.source_files = 'SCBaseFramework/**/*{h,m}'
    spec.vendored_libraries = 'SCBaseFramework/**/*.a'
  else
    spec.vendored_frameworks = "SourceSDK/*.framework"
  end

  spec.pod_target_xcconfig = { 'ENABLE_BITCODE' => 'YES' }
  spec.pod_target_xcconfig = { 'VALID_ARCHS' => 'armv7 arm64' }

end
