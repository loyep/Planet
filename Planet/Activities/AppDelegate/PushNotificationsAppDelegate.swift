//
//  PushNotificationsAppDelegate.swift
//  Planet
//
//  Created by Loren on 2018/10/27.
//  Copyright © 2018 planet. All rights reserved.
//

import UIKit

// 推送
class PushNotificationsAppDelegate: AppDelegateType {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        print("推送配置")
        return true
    }

    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        print("推送相关代码...")
    }

    deinit {
        print("PushNotificationsAppDelegate")
    }

}
