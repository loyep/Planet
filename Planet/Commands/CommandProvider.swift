//
//  StartupCommandsBuilder.swift
//  Planet
//
//  Created by Loren on 2018/10/26.
//  Copyright © 2018 planet. All rights reserved.
//

import UIKit

final class CommandProvider {
    
    private var window: UIWindow!
    
    init() {
        
    }
    
    func setKeyWindow(_ window: UIWindow) -> CommandProvider {
        self.window = window
        return self
    }
    
    func build() -> [Command] {
        return [
            //
        ]
    }
    
    
}
