//
//  ThirdPartiesConfiguratorAppDelegate.swift
//  Planet
//
//  Created by Loren on 2018/10/27.
//  Copyright © 2018 planet. All rights reserved.
//

import UIKit

// 第三方库
class ThirdPartiesConfiguratorAppDelegate: AppDelegateType {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        print("第三方库初始化代码")
        return true
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        print("ThirdPartiesConfiguratorAppDelegate - applicationDidEnterBackground")
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        print("ThirdPartiesConfiguratorAppDelegate - applicationDidBecomeActive")
    }

    deinit {
        print("ThirdPartiesConfiguratorAppDelegate")
    }

}
