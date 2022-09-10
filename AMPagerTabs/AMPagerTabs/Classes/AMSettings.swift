//
//  AMSettings.swift
//  AMPagerTabs
//
//  Created by abedalkareem omreyh on 10/09/2022.
//

import UIKit

public class AMSettings {

  /// Tab background color, default is `blue`.
  public var tabBackgroundColor = #colorLiteral(red: 0.1568627451, green: 0.6588235294, blue: 0.8901960784, alpha: 1)
  /// Tab button background color, default is `blue`.
  public var tabButtonColor = #colorLiteral(red: 0.1568627451, green: 0.6588235294, blue: 0.8901960784, alpha: 1)
  /// Tab button title color, default is `white`.
  public var tabButtonTitleColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
  /// Pager background color, default is `white`.
  public var pagerBackgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)

  /// Initial tab width, default is `100`.
  public var initialTabWidth: CGFloat = 100
  /// Tab height, default is `60`.
  public var tabHeight: CGFloat = 60
}
