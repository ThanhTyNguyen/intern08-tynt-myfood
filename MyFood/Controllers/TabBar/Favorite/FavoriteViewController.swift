//
//  FavoriteViewController.swift
//  MyFood
//
//  Created by Nguyen Thanh Ty on 5/10/17.
//  Copyright © 2017 Asian Tech Co., Ltd. All rights reserved.
//

import UIKit

class FavoriteViewController: BaseViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
    setupNavigation()
  }
  
  func setupNavigation() {
    navigationController?.navigationBar.topItem?.title = "Địa điểm yêu thích"
    navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
    navigationController?.navigationBar.barTintColor = Color.main
  }
  
}
