//
//  ViewControllerAppDelegate.swift
//  Planet
//
//  Created by Loren on 2018/10/27.
//  Copyright © 2018 planet. All rights reserved.
//

import UIKit

// 控制器处理
class ViewControllerAppDelegate: AppDelegateType {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        print("根控制器设置代码")

        let window = UIWindow(frame: UIScreen.main.bounds)
        window.backgroundColor = .white

        let tabBar = TabBarController()

        let nav = NavigationController(rootViewController: tabBar)
        window.rootViewController = nav
        self.window = window
        self.window?.makeKeyAndVisible()

        CommandProvider()
                .setKeyWindow(self.window!)
                .build()
                .forEach {
                    $0.execute()
                }

        return true
    }

    deinit {
        print("ViewControllerAppDelegate")
    }

}
