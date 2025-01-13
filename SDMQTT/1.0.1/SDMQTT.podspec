Pod::Spec.new do |spec|

  spec.name         = "SDMQTT"
  spec.version      = "1.0.1"
  spec.summary      = "MQTT connect"
  spec.homepage     = "https://github.com/GaoRuihao/SDMQTT"
  spec.license      = "MIT"
  spec.author             = { "xisuo" => "xiaoxisuo@gmail.com" }
  spec.platform     = :ios, "13.0"
  spec.source       = { :git => "https://github.com/GaoRuihao/SDMQTT.git", :tag => "#{spec.version}" }

  spec.dependency 'AFNetworking','3.2.0'
  spec.dependency 'SVProgressHUD'
  spec.dependency 'MQTTClient'
  spec.frameworks = 'Foundation','UIKit'

  if ENV['debug']
    spec.header_dir = "SDMQTT"
    spec.source_files = 'SDMQTT/**/*{h,m}'
    spec.vendored_libraries = 'SDMQTT/**/*.a'
  else
    spec.vendored_frameworks = "SourceSDK/*.framework"
  end

  spec.pod_target_xcconfig = { 'ENABLE_BITCODE' => 'YES' }
  spec.pod_target_xcconfig = { 'VALID_ARCHS' => 'armv7 arm64' }

end
