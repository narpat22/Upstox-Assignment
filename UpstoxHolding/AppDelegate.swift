//
//  AppDelegate.swift
//  UpstoxHolding
//
//  Created by Pritesh Singhvi on 12/11/24.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    lazy var window: UIWindow? = UIWindow()
    var router: HoldingRouterProtocol?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        router = HoldingRouter(window: window)
        router?.presentFirstScreen()
        return true
    }
}
