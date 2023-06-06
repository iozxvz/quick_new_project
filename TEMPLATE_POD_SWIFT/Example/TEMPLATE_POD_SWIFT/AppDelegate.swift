//
//  AppDelegate.swift
//  TEMPLATE_POD_SWIFT
//
//  Created by fangchao on 06/05/2023.
//  Copyright (c) 2023 fangchao. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow()
        window?.rootViewController = UINavigationController(rootViewController: ViewController())
        return true
    }
}
