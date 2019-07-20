//
//  AMTabButton.swift
//  AMPagerTabs
//
//  Created by abedalkareem omreyh on 10/27/17.
//  Copyright © 2017 abedalkareem omreyh. All rights reserved.
//  GitHub: https://github.com/Abedalkareem/AMPagerTabs
//

import UIKit

class AMTabButton: UIButton {

  var index: Int?

  override func draw(_ rect: CGRect) {
    addTabSeparatorLine()
  }

  private func addTabSeparatorLine(){
    let gradientMaskLayer: CAGradientLayer = CAGradientLayer()
    gradientMaskLayer.frame = self.bounds
    gradientMaskLayer.colors = [UIColor.clear.cgColor, UIColor.black.cgColor]
    gradientMaskLayer.locations = [0.0, 0.5]
    gradientMaskLayer.frame = CGRect(x: 0, y: 0, width: 0.5, height: self.frame.height)
    layer.addSublayer(gradientMaskLayer)
  }

}
