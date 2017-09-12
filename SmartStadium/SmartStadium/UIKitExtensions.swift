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
    
    func setBackground(imageBack : String){
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: imageBack)?.draw(in: self.view.bounds)
        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        self.view.backgroundColor = UIColor(patternImage: image)
    }
    
}

extension UIApplication {
    var statusBarView: UIView? {
        return value(forKey: "statusBar") as? UIView
    }
}


