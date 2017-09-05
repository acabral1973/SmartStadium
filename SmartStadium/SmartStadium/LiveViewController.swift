//
//  LiveViewController.swift
//  SmartStadium
//
//  Created by Alejandro Cabral Benavente on 5/9/17.
//  Copyright © 2017 Smartech. All rights reserved.
//

import UIKit

class LiveViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Personalizamos el aspecto del NavBar
        let titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width - 32, height: view.frame.width))
        titleLabel.text = "Live from Stadium"
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

