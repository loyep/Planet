//
//  StartupViewController.swift
//  Planet
//
//  Created by Loren on 2018/10/28.
//  Copyright © 2018 planet. All rights reserved.
//

import UIKit
import SnapKit

class StartupViewController: UIViewController {

    var startupView: UICollectionView? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        let bgImageView = UIImageView(image: UIImage(named: "startup-bg-01"))
        bgImageView.backgroundColor = .red
        view.addSubview(bgImageView)
        bgImageView.snp.makeConstraints {
            $0.left.right.top.bottom.equalTo(view)
        }
    }

}
