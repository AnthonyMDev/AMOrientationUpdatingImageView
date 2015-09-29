Pod::Spec.new do |s|
  s.name             = "AMOrientationUpdatingImageView"
  s.version          = "1.0.0"
  s.summary          = "A UIImageView subclass that allows for different images to be used for portrait and landscape orientations."

  s.description      = <<-DESC
`AMOrientationUpdatingImageView` is a `UIImageView` subclass that allows for different images to be set for portrait and landscape orientations and manages setting and updating its `image` based on the device's orientation.
                       DESC

  s.homepage         = "https://github.com/AnthonyMDev/AMOrientationUpdatingImageView"
  s.license          = 'MIT'
  s.author           = { "Anthony Miller" => "anthony@app-order.com" }
  s.source           = { :git => "https://github.com/AnthonyMDev/AMOrientationUpdatingImageView.git", :tag => s.version.to_s }

  s.social_media_url = 'https://twitter.com/AnthonyMDev'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'

  s.frameworks = 'UIKit'

end
