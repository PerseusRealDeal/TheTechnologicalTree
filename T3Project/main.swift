//
//  main.swift
//  T3Project
//
//  Created by Mikhail A. Zhigulin of Novosibirsk.
//
//  Unlicensed Free Software.
//

import UIKit

// MARK: - The Start Line

let report = PerseusLogger.Report()
log.customActionOnMessage = report.report(_:_:_:_:_:_:)

var loadedInfo = ""

if let path = Bundle.main.url(forResource: "CPLConfig", withExtension: "json") {
    if log.loadConfig(path) {
        loadedInfo = "Options successfully loaded!"
    } else {
        loadedInfo = "Failed to load options!"
    }
} else {
    loadedInfo = "Failed to create URL!"
}

log.message(loadedInfo)
log.message("The app's start point...", .info)

// MARK: - The Run

let appDelegateClass: AnyClass = NSClassFromString("TestingAppDelegate") ?? AppDelegate.self
let delegateClassName = NSStringFromClass(appDelegateClass)

UIApplicationMain(CommandLine.argc, CommandLine.unsafeArgv, nil, delegateClassName)
