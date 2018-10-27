//
//  AppDelegateFactory.swift
//  Planet
//
//  Created by Loren on 2018/10/27.
//  Copyright © 2018 planet. All rights reserved.
//

import UIKit


enum AppDelegateFactory {
    static func makeDefault() -> AppDelegateType {

        return CompositeAppDelegate(appDelegates: [
            PushNotificationsAppDelegate(),
            AppearanceAppDelegate(),
            ThirdPartiesConfiguratorAppDelegate(),
            ViewControllerAppDelegate(),
        ]
        )
    }
}
