import UIKit

/*
*  `OrientationUpdatingImageView` is a `UIImageView` subclass that allows for different images to be set for portrait and landscape orientations and manages setting and updating its `image` based on the device's orientation.
*/
@IBDesignable
public class OrientationUpdatingImageView: UIImageView {
  
  /// The image to be displayed when the device's orientation is portrait.
  @IBInspectable public var portraitImage: UIImage?
  
  /// The image to be displayed when the device's orientation is landscape.
  @IBInspectable public var landscapeImage: UIImage?
  
  // The `UIDevice` to check the orientation of when determining which image to display
  var device: UIDevice =  UIDevice.currentDevice()
  
  public override func layoutSubviews() {
    super.layoutSubviews()
    
    if let imageToUse = device.orientation.isPortrait ? portraitImage?.CGImage : landscapeImage?.CGImage {
      image = UIImage(CGImage: imageToUse, scale: 1.0, orientation: .Up)
      
    } else {
      image = nil
    }
  }
  
}
