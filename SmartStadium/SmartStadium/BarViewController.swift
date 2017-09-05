//
//  BarViewController.swift
//  SmartStadium
//
//  Created by Alejandro Cabral Benavente on 5/9/17.
//  Copyright © 2017 Smartech. All rights reserved.
//

import UIKit

class BarViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        //Personalizamos el aspecto del NavBar
        let titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width - 32, height: view.frame.width))
        titleLabel.text = "Stadium Bar"
        titleLabel.textColor = UIColor.white
        titleLabel.font = UIFont.systemFont(ofSize: 19)
        navigationItem.titleView = titleLabel
        view.backgroundColor = UIColor.white
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

