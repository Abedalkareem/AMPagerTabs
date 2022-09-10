//
//  AMLineView.swift
//  AMPagerTabs
//
//  Created by abedalkareem omreyh on 10/26/17.
//  Copyright © 2017 abedalkareem omreyh. All rights reserved.
//  GitHub: https://github.com/Abedalkareem/AMPagerTabs
//

import UIKit

class AMLineView: UIView {

  // MARK: - Private Properties

  private let lineHeight: CGFloat = 7
  private let lineColor = UIColor.white
  private let shapeLayer = CAShapeLayer()

  // MARK: - init

  override init(frame: CGRect) {
    super.init(frame: frame)
    setup()
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  private func setup() {
    clipsToBounds = true
  }

  // MARK: - View lifecycle

  override func layoutSubviews() {
    super.layoutSubviews()

    updateLayerPath()
  }

  private func updateLayerPath() {
    let height = frame.height
    let width = frame.width
    let triangleSize: CGFloat = 5

    let path = UIBezierPath()
    // draw the lines of the shape
    path.move(to: CGPoint(x: 0, y: height - lineHeight))
    path.addLine(to: CGPoint(x: (width / 2) - triangleSize, y: height - lineHeight))
    path.addLine(to: CGPoint(x: (width / 2), y: height - lineHeight - triangleSize))
    path.addLine(to: CGPoint(x: (width / 2) + triangleSize, y: height - lineHeight))
    path.addLine(to: CGPoint(x: width, y: height - lineHeight))
    path.addLine(to: CGPoint(x: width, y: height))
    path.addLine(to: CGPoint(x: 0, y: height))
    path.addLine(to: CGPoint(x: 0, y: height - lineHeight))
    path.close()

    shapeLayer.path = path.cgPath
    self.layer.mask = shapeLayer
  }
}
