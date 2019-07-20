//
//  ViewController.swift
//  AMPagerTabs
//
//  Created by abedalkareem omreyh on 11/29/17.
//  Copyright © 2017 abedalkareem omreyh. All rights reserved.
//

import UIKit
import AMPagerTabs

class ViewController: AMPagerTabsViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    settings.tabBackgroundColor = #colorLiteral(red: 0.2819149196, green: 0.7462226748, blue: 0.6821211576, alpha: 1)
    settings.tabButtonColor = #colorLiteral(red: 0.2819149196, green: 0.7462226748, blue: 0.6821211576, alpha: 1)

    tabFont = UIFont.systemFont(ofSize: 17, weight: .bold)

    self.viewControllers = getTabs()

  }

  func getTabs() -> [UIViewController]{
    // instantiate the viewControllers
    let airplaneViewController = self.storyboard?.instantiateViewController(withIdentifier: "airplaneViewController")
    let giftViewController = self.storyboard?.instantiateViewController(withIdentifier: "giftViewController")
    let shoeViewController = self.storyboard?.instantiateViewController(withIdentifier: "shoeViewController")

    // set the title for the tabs
    airplaneViewController?.title = "Airplane"
    shoeViewController?.title = "Shoe"
    giftViewController?.title = "Gift"

    return [airplaneViewController!,giftViewController!,shoeViewController!]
  }

}

