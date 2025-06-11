Pod::Spec.new do |spec|

  spec.name         = "SDMQTT"
  spec.version      = "1.0.2"
  spec.summary      = "MQTT connect"
  spec.homepage     = "https://github.com/GaoRuihao/SDMQTT"
  spec.license      = "MIT"
  spec.author             = { "xisuo" => "xiaoxisuo@gmail.com" }
  spec.platform     = :ios, "13.0"
  spec.source       = { :http => "https://github.com/GaoRuihao/resource/releases/download/1.0.0/SDMQTT-1.0.2.zip" }

  spec.dependency 'AFNetworking'
  spec.dependency 'SVProgressHUD'
  spec.dependency 'MQTTClient'
  spec.frameworks = 'Foundation','UIKit'

  spec.vendored_frameworks = "SDMQTT.framework"

  spec.pod_target_xcconfig = { 'ENABLE_BITCODE' => 'YES' }
  spec.pod_target_xcconfig = { 'VALID_ARCHS' => 'armv7 arm64' }

end
