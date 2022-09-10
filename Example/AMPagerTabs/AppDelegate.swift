//
//  AppDelegate.swift
//  AMPagerTabs
//
//  Created by Abedalkareem on 07/20/2019.
//  Copyright (c) 2019 Abedalkareem. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

    UINavigationBar.appearance().backgroundColor = #colorLiteral(red: 0.2819149196, green: 0.7462226748, blue: 0.6821211576, alpha: 1)
    UINavigationBar.appearance().barTintColor = #colorLiteral(red: 0.2819149196, green: 0.7462226748, blue: 0.6821211576, alpha: 1)
    UIBarButtonItem.appearance().tintColor = UIColor.white
    UINavigationBar.appearance().shadowImage = UIImage()
    UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)

    return true
  }

  func applicationWillResignActive(_ application: UIApplication) { }

  func applicationDidEnterBackground(_ application: UIApplication) { }

  func applicationWillEnterForeground(_ application: UIApplication) { }

  func applicationDidBecomeActive(_ application: UIApplication) { }

  func applicationWillTerminate(_ application: UIApplication) { }

}
