//
//  WalkThroughCell.swift
//  MyFood
//
//  Created by Nguyen Thanh Ty on 4/28/17.
//  Copyright © 2017 Asian Tech Co., Ltd. All rights reserved.
//

import UIKit

class WalkThroughCell: UICollectionViewCell {
  @IBOutlet weak private var headingLabel: UILabel!
  @IBOutlet weak private var imageContent: UIImageView!
  @IBOutlet weak private var bottomContentLabel: UILabel!
  func configUI(walkThroughScreen: WalkThroughScreen?) {
    guard let walkThroughScreen = walkThroughScreen else { return }
    self.headingLabel.text = walkThroughScreen.heading
    self.imageContent.image = UIImage(named: walkThroughScreen.image)
    self.bottomContentLabel.text = walkThroughScreen.content  }
}
