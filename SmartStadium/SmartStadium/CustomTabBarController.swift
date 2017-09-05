//
//  CustomTabBarController.swift
//  SmartStadium
//
//  Created by Alejandro Cabral Benavente on 5/9/17.
//  Copyright © 2017 Smartech. All rights reserved.
//

import UIKit

final class CustomTabBarController: UITabBarController{

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let searchController = SearchViewController().wrappedInNavigation(title: "Search", imageName: "searchIcon")
        let liveController = LiveViewController().wrappedInNavigation(title: "Live", imageName: "liveIcon")
        let barController = BarViewController().wrappedInNavigation(title: "Bar", imageName: "barIcon")
        let newsController = NewsViewController().wrappedInNavigation(title: "News", imageName: "newsIcon")
        let gameController = GameViewController().wrappedInNavigation(title: "Game", imageName: "gameIcon")
        
        viewControllers = [searchController, liveController, barController, newsController, gameController]
    }
}
