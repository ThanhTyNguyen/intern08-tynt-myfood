//
//  BaseViewController.swift
// MyFood
//
//  Created by DaoNV on 5/31/16.
//  Copyright © 2016 AsianTech Co., Ltd. All rights reserved.
//

import UIKit
import SwiftUtils

class BaseViewController: ViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupData()
    setupUI()
    navigationController?.navigationBar.isTranslucent = false
    view.backgroundColor = Color.lightBeige
  }
  
  func setupUI() {
  }
  
  func setupData() {
  }
  
  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    super.touchesBegan(touches, with: event)
    view.endEditing(true)
  }
}
