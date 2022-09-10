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

  // MARK: - Properties

  var index: Int?

  // MARK: - Private Properties

  private let gradientMaskLayer: CAGradientLayer = CAGradientLayer()

  // MARK: - init

  override init(frame: CGRect) {
    super.init(frame: frame)
    addTabSeparatorLine()
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  private func addTabSeparatorLine() {
    gradientMaskLayer.colors = [UIColor.clear.cgColor, UIColor.black.cgColor]
    gradientMaskLayer.locations = [0.0, 0.5]
    layer.addSublayer(gradientMaskLayer)
  }

  // MARK: - View lifecycle

  override func layoutSubviews() {
    super.layoutSubviews()
    updateFrame()
  }

  private func updateFrame() {
    gradientMaskLayer.frame = self.bounds
    gradientMaskLayer.frame = CGRect(x: 0, y: 0, width: 0.5, height: self.frame.height)
  }
}
