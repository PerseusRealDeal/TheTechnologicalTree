//
//  AppDelegate.swift
//  T3Project
//
//  Created by Mikhail A. Zhigulin of Novosibirsk.
//
//  Unlicensed Free Software.
//

import UIKit

// MARK: - The Business Matter Application Delegate

class AppDelegate: UIResponder { var window: UIWindow? }

extension AppDelegate: UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions
        launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        log.message("Launching with business matter purpose", .info)
        log.message("[\(type(of: self))].\(#function)")

        // Settings bundle

        UserPreferences.setBuildNumber()
        UserPreferences.setVersionNumber()

        UserPreferences.registerSettingsBundle(with: Settings.bundleParams)

        // First screen

        window = UIWindow(frame: UIScreen.main.bounds)

        #if false
        // window!.rootViewController = ViewController()
        #else
        window!.rootViewController = MainViewController.storyboardInstance()
        #endif

        window!.makeKeyAndVisible()

        DarkModeAgent.force(DarkModeUserChoice)

        return true
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        log.message("[\(type(of: self))].\(#function)")

        // Actualize Dark Mode style to Settings Bundle
        if let choice = DarkModeAgent.isDarkModeSettingsKeyChanged() {
            DarkModeAgent.force(choice)
        }
    }

    func applicationWillResignActive(_ application: UIApplication) {
        log.message("[\(type(of: self))].\(#function)")
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        log.message("[\(type(of: self))].\(#function)")
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        log.message("[\(type(of: self))].\(#function)")
    }

    func applicationWillTerminate(_ application: UIApplication) {
        log.message("[\(type(of: self))].\(#function)")
    }
}
