//
//  TabBarViewController.swift
//  MyFood
//
//  Created by Nguyen Thanh Ty on 5/10/17.
//  Copyright © 2017 Asian Tech Co., Ltd. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
      // Create newFeed tab
      let homeNavigationController = UINavigationController(rootViewController: HomeViewController())
      homeNavigationController.tabBarItem.imageInsets = UIEdgeInsets(top: 5, left: 0, bottom: -5, right: 0)
      homeNavigationController.tabBarItem.image = #imageLiteral(resourceName: "home")
      
      // Create notification tab
      let notificationNavigationController = UINavigationController(rootViewController: NotificationViewController())
      notificationNavigationController.tabBarItem.imageInsets = UIEdgeInsets(top: 5, left: 0, bottom: -5, right: 0)
      notificationNavigationController.tabBarItem.image = #imageLiteral(resourceName: "notification")
      
      // Create favorite tab
      let favoriteNavigationController = UINavigationController(rootViewController: FavoriteViewController())
      favoriteNavigationController.tabBarItem.imageInsets = UIEdgeInsets(top: 5, left: 0, bottom: -5, right: 0)
      favoriteNavigationController.tabBarItem.image = #imageLiteral(resourceName: "favorite")
      
      // Create profile tab
      let profileNavigationController = UINavigationController(rootViewController: ProfileViewController())
      profileNavigationController.tabBarItem.imageInsets = UIEdgeInsets(top: 5, left: 0, bottom: -5, right: 0)
      profileNavigationController.tabBarItem.image = #imageLiteral(resourceName: "profile")
      
      tabBar.isTranslucent = false
      viewControllers = [homeNavigationController, notificationNavigationController, favoriteNavigationController, profileNavigationController]
      title = "New Feed"
      tabBar.barTintColor = UIColor(red: 74.0/255.0, green: 74.0/255.0, blue: 74.0/255.0, alpha: 1)
      tabBar.tintColor = Color.main
      if #available(iOS 10.0, *) {
        tabBar.unselectedItemTintColor = .white
      } else {
        // Fallback on earlier versions
      }
  }
}
