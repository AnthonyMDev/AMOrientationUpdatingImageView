import UIKit

/*
*  `OrientationUpdatingImageView` is a `UIImageView` subclass that allows for different images to be set for portrait and landscape orientations and manages setting and updating its `image` based on the device's orientation.
*/
@IBDesignable
open class OrientationUpdatingImageView: UIImageView {
  
  /// The image to be displayed when the device's orientation is portrait.
  @IBInspectable open var portraitImage: UIImage?
  
  /// The image to be displayed when the device's orientation is landscape.
  @IBInspectable open var landscapeImage: UIImage?
  
  // The `UIDevice` to check the orientation of when determining which image to display
  var device: UIDevice =  UIDevice.current
  
  open override func layoutSubviews() {
    super.layoutSubviews()
    
    if let imageToUse = device.orientation.isPortrait ? portraitImage?.cgImage : landscapeImage?.cgImage {
      image = UIImage(cgImage: imageToUse, scale: 1.0, orientation: .up)
      
    } else {
      image = nil
    }
  }
  
}
