//
//  AppDelegate.swift
//  IdealUIKit
//
//  Created by Chris Nevin on 21/10/2022.
//

import LoginCoordinator
import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let window = UIWindow(frame: UIScreen.main.bounds)
        let navigationController = UINavigationController()
        let coordinator = LoginCoordinator(
            navigationController: navigationController,
            deps: Dependencies()
        )
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        coordinator.start()

        self.window = window

        return true
    }
}

