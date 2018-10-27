//
//  TabBarController.swift
//  Planet
//
//  Created by Loren on 2018/10/26.
//  Copyright © 2018 planet. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    let discover = DiscoverViewController()
    
    let profile = ProfileViewController()
    
    let home = HomeViewController()
    
    let favorite = FavoriteViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}
