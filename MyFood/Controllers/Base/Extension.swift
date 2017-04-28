//
//  Extension.swift
//  MyFood
//
//  Created by Nguyen Thanh Ty on 4/28/17.
//  Copyright © 2017 Asian Tech Co., Ltd. All rights reserved.
//

import UIKit

extension UITextField {
  func underlined() {
    let border = CALayer()
    let width = CGFloat(1.0)
    border.borderColor = UIColor.white.cgColor
    border.frame = CGRect(x: 0, y: self.frame.size.height - width, width: UIScreen.main.bounds.size.width - 90, height: 20)
    border.borderWidth = width
    self.layer.addSublayer(border)
    self.layer.masksToBounds = true
  }
}
