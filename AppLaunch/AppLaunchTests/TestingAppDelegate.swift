//
//  TestingAppDelegate.swift
//  AppLaunchTests
//
//  Created by Krzysztof Jankowski on 13/08/2021.
//

import UIKit

@objc(TestingAppDelegate)
class TestingAppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        print("Launching with testing app delegate")
        return true
    }

}
