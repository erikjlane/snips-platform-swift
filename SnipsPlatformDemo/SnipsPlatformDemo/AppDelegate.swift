//
//  AppDelegate.swift
//  SnipsPlatformDemo
//
//  Copyright © 2019 Snips. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    var mainViewController: ViewController?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = .black
        window?.makeKeyAndVisible()

        mainViewController = ViewController()
        let navigationController = UINavigationController()
        navigationController.viewControllers = [mainViewController!]
        window?.rootViewController = navigationController

        return true
    }

    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey: Any] = [:]) -> Bool {
        mainViewController?.startSnips(assistantURL: url)
        return true
    }
}
