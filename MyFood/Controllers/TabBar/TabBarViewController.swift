//
//  TabBarViewController.swift
//  MyFood
//
//  Created by Nguyen Thanh Ty on 5/10/17.
//  Copyright © 2017 Asian Tech Co., Ltd. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {
  private let naviInset = UIEdgeInsets(top: 5, left: 0, bottom: -5, right: 0)
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Create newFeed tab
    let homeNavigationController = UINavigationController(rootViewController: HomeViewController())
    homeNavigationController.tabBarItem.imageInsets = naviInset
    homeNavigationController.tabBarItem.image = #imageLiteral(resourceName: "home")
    
    // Create notification tab
    let notificationNavigationController = UINavigationController(rootViewController: NotificationViewController())
    notificationNavigationController.tabBarItem.imageInsets = naviInset
    notificationNavigationController.tabBarItem.image = #imageLiteral(resourceName: "notification")
    
    // Create favorite tab
    let favoriteNavigationController = UINavigationController(rootViewController: FavoriteViewController())
    favoriteNavigationController.tabBarItem.imageInsets = naviInset
    favoriteNavigationController.tabBarItem.image = #imageLiteral(resourceName: "favorite")
    
    // Create profile tab
    let profileNavigationController = UINavigationController(rootViewController: ProfileViewController())
    profileNavigationController.tabBarItem.imageInsets = naviInset
    profileNavigationController.tabBarItem.image = #imageLiteral(resourceName: "profile")
    
    tabBar.isTranslucent = false
    viewControllers = [homeNavigationController, notificationNavigationController, favoriteNavigationController, profileNavigationController]
    title = "New Feed"
    tabBar.barTintColor = Color.tabBarColor
    tabBar.tintColor = Color.main
    
    if #available(iOS 10.0, *) {
      tabBar.unselectedItemTintColor = .white
    }
  }
}
