//
//  AppDelegateActive.swift
//  Planet
//
//  Created by Loren on 2018/10/26.
//  Copyright © 2018 planet. All rights reserved.
//

import UIKit

typealias AppDelegateType = UIResponder & UIApplicationDelegate

class CompositeAppDelegate: AppDelegateType {
    
    private let appDelegates: [UIApplicationDelegate]
    
    convenience override init() {
        fatalError("Not supported!")
    }
    
    private var window: UIWindow? {
        get {
            appDelegates.forEach {
                print("\(String(describing: $0.window ?? nil))")
            }
            return nil
        }
    }
    
    init(appDelegates: [AppDelegateType]) {
        self.appDelegates = appDelegates
    }
    
    func application(_ application: UIApplication, willFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        appDelegates.forEach {
            _ = $0.application?(application, willFinishLaunchingWithOptions: launchOptions)
        }
        return true
    }
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        appDelegates.forEach {
            _ = $0.application?(application, didFinishLaunchingWithOptions: launchOptions)
        }
        
        return true
    }
    
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        appDelegates.forEach {
            _ = $0.application?(application, didRegisterForRemoteNotificationsWithDeviceToken: deviceToken)
        }
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        appDelegates.forEach {
            _ = $0.applicationDidEnterBackground?(application)
        }
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        appDelegates.forEach {
            _ = $0.applicationWillEnterForeground?(application)
        }
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        appDelegates.forEach {
            _ = $0.applicationWillResignActive?(application)
        }
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        appDelegates.forEach {
            _ = $0.applicationDidBecomeActive?(application)
        }
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        appDelegates.forEach {
            _ = $0.applicationWillTerminate?(application)
        }
    }
}
