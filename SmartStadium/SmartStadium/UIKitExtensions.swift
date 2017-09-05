//
//  UIKitExtensions.swift
//  SmartStadium
//
//  Created by Alejandro Cabral Benavente on 5/9/17.
//  Copyright © 2017 Smartech. All rights reserved.
//

import UIKit

extension UIViewController{
    
    func wrappedInNavigation(title: String, imageName: String) -> UINavigationController{
        
        let nav = UINavigationController(rootViewController: self)
        nav.title = title
        nav.tabBarItem.image = UIImage(named: imageName)
        return nav
    }
    
}

extension UIApplication {
    var statusBarView: UIView? {
        return value(forKey: "statusBar") as? UIView
    }
}


