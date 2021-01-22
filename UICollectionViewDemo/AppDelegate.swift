//
//  AppDelegate.swift
//  UICollectionViewDemo
//
//  Created by TPPham on 1/22/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let homeVC = HomeView.init(nibName: "HomeView", bundle: nil)
        let nav = UINavigationController(rootViewController: homeVC)
        window?.makeKeyAndVisible()
        window?.rootViewController = nav
        return true
    }
}

