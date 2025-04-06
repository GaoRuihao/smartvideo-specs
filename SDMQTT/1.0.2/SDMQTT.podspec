Pod::Spec.new do |spec|

  spec.name         = "SDMQTT"
  spec.version      = "1.0.2"
  spec.summary      = "MQTT connect"
  spec.homepage     = "https://github.com/GaoRuihao/SDMQTT"
  spec.license      = "MIT"
  spec.author             = { "xisuo" => "xiaoxisuo@gmail.com" }
  spec.platform     = :ios, "13.0"
  spec.source       = { 
    "http": "https://cdn.jsdelivr.net/gh/GaoRuihao/resource/SDMQTT.zip"
  }

  spec.dependency 'AFNetworking','3.2.0'
  spec.dependency 'SVProgressHUD'
  spec.dependency 'MQTTClient'
  spec.frameworks = 'Foundation','UIKit'

  if ENV['debug']
    spec.header_dir = "SDMQTT"
    spec.source_files = 'SDMQTT/**/*{h,m}'
    spec.vendored_libraries = 'SDMQTT/**/*.a'
  else
    spec.vendored_frameworks = "*.framework"
  end

  spec.pod_target_xcconfig = {
    'ENABLE_BITCODE' => 'YES',
    'VALID_ARCHS' => 'armv7 arm64'
  }

end
