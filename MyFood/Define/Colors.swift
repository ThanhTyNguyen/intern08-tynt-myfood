//
//  Colors.swift
// MyFood
//
//  Created by DaoNV on 3/7/16.
//  Copyright © 2016 AsianTech Inc. All rights reserved.
//

import SwiftUtils

// MARK: - Base
final class Color {
  static let white = UIColor.white
  static let lightBeige = UIColor.RGB(243, 237, 216)
  static func defaultColor() -> UIColor {
    return UIColor(colorLiteralRed: 250.0/255.0, green: 87.0/255.0, blue: 78.0/255.0, alpha: 1.0)
  }
}
