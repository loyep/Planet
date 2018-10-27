//
//  AppearanceAppDelegate.swift
//  Planet
//
//  Created by Loren on 2018/10/27.
//  Copyright © 2018 planet. All rights reserved.
//

import UIKit

// 外观样式
class AppearanceAppDelegate: AppDelegateType {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        print("外观样式配置")
        return true
    }

    deinit {
        print("AppearanceAppDelegate")
    }

}
