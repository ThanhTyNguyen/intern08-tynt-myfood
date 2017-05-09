//
//  TabBarViewController.swift
//  MyFood
//
//  Created by Nguyen Thanh Ty on 5/9/17.
//  Copyright © 2017 Asian Tech Co., Ltd. All rights reserved.
//

import UIKit

enum TabbarItem: Int {
  case newFeed, notification, favorite, profile
  var title: String? {
    switch self {
    case .newFeed: return "Trang chủ"
    case .favorite: return "Địa điểm yêu thích"
    case .notification: return "Thông báo"
    case .profile: return "Cá nhân"
    }
  }
}

class TabBarViewController: UITabBarController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Create newFeed tab
    let newFeedNavigationController = UINavigationController(rootViewController: NewFeedViewController())
    newFeedNavigationController.tabBarItem.imageInsets = UIEdgeInsets(top: 5, left: 0, bottom: -5, right: 0)
    newFeedNavigationController.tabBarItem.image = #imageLiteral(resourceName: "newfeed")
    
    // Create notification tab
    let notificationNavigationController = UINavigationController(rootViewController: NotificationViewController())
    notificationNavigationController.tabBarItem.imageInsets = UIEdgeInsets(top: 5, left: 0, bottom: -5, right: 0)
    notificationNavigationController.tabBarItem.image = #imageLiteral(resourceName: "notification")
    
    // Create post tab
    // Create favorite tab
    let favoriteNavigationController = UINavigationController(rootViewController: FavoriteViewController())
    favoriteNavigationController.tabBarItem.imageInsets = UIEdgeInsets(top: 5, left: 0, bottom: -5, right: 0)
    favoriteNavigationController.tabBarItem.image = #imageLiteral(resourceName: "favorite")
    
    // Create profile tab
    let profileNavigationController = UINavigationController(rootViewController: ProfileViewController())
    profileNavigationController.tabBarItem.imageInsets = UIEdgeInsets(top: 5, left: 0, bottom: -5, right: 0)
    profileNavigationController.tabBarItem.image = #imageLiteral(resourceName: "profile")
    
    tabBar.isTranslucent = false
    viewControllers = [newFeedNavigationController, notificationNavigationController, favoriteNavigationController, profileNavigationController]
    title = "Trang Chủ"
    tabBar.barTintColor = UIColor(red: 74.0/255.0, green: 74.0/255.0, blue: 74.0/255.0, alpha: 1)
    tabBar.tintColor = Color.main
    if #available(iOS 10.0, *) {
      tabBar.unselectedItemTintColor = .white
    } else {
      // Fallback on earlier versions
    }
    delegate = self
  }
}

extension TabBarViewController: UITabBarControllerDelegate {
  func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
    if let item = TabbarItem(rawValue: selectedIndex) {
      title = item.title
    }
  }
}
