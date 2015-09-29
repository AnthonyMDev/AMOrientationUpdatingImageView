//
//  OrientationUpdatingImageViewTests.swift
//  AMOrientationUpdatingImageView
//
//  Created by Anthony Miller on 9/29/15.
//  Copyright © 2015 CocoaPods. All rights reserved.
//

import UIKit
import XCTest
import Nimble

@testable import AMOrientationUpdatingImageView

class OrientationUpdatingImageViewTests: XCTestCase {
  
  var sut: OrientationUpdatingImageView!
  
  override func setUp() {
    super.setUp()
    
    sut = OrientationUpdatingImageView(frame: CGRectZero)
    
    sut.portraitImage = UIImage(named: "PortraitImage")
    sut.landscapeImage = UIImage(named: "LandscapeImage")
    
  }
  
  /**
  *  MARK: Test Helpers
  */
  
  class MockDevice: UIDevice {
    
    init(orientation: UIDeviceOrientation) {
      _orientation = orientation
    }
    
    private var _orientation: UIDeviceOrientation
    
    override var orientation: UIDeviceOrientation {
      return _orientation
    }
    
  }
  
  func setOrientation(orientation: UIDeviceOrientation) {
    let device = MockDevice(orientation: orientation)
    sut.device = device
  }
  
  /**
  *  MARK: - Tests
  */
  
  func test__layoutSubviews_toLandscape__setsImageToLandscapeImage() {
    // given
    let expectedData = UIImageJPEGRepresentation(self.sut.landscapeImage!, 0.0)
    
    setOrientation(UIDeviceOrientation.LandscapeLeft)
    
    // when
    sut.layoutSubviews()
    
    let actualData = UIImageJPEGRepresentation(sut.image!, 0.0)
    
    // then
    expect(actualData).to(equal(expectedData))
  }
  
  func test__layoutSubviews_toPortrait__setsImageToPortraitImage() {
    // given
    let expectedData = UIImageJPEGRepresentation(self.sut.portraitImage!, 0.0)
    
    setOrientation(UIDeviceOrientation.Portrait)
    
    // when
    sut.layoutSubviews()
    
    let actualData = UIImageJPEGRepresentation(sut.image!, 0.0)
    
    // then
    expect(actualData).to(equal(expectedData))
  }
  
}

