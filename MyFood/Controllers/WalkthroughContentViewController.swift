//
//  WalkthroughContentViewController.swift
//  MyFood
//
//  Created by Nguyen Thanh Ty on 4/27/17.
//  Copyright © 2017 Asian Tech Co., Ltd. All rights reserved.
//

import UIKit

class WalkthroughContentViewController: UIViewController {
  @IBOutlet weak private var headingLabel: UILabel!
  @IBOutlet weak private var contentLable: UILabel!
  @IBOutlet weak private var contentImageView: UIImageView!
  @IBOutlet weak private var pageControl: UIPageControl!
  @IBOutlet weak private var startBtn: UIButton!
  var index = 0
  var heading = ""
  var imageFile = ""
  var content = ""
  override func viewDidLoad() {
    super.viewDidLoad()
    setupView()
  }
  
  func setupView() {
    headingLabel.text = heading
    contentLable.text = content
    contentImageView.image = UIImage(named: imageFile)
    pageControl.currentPage = index
    startBtn.layer.borderWidth = 0.5
    startBtn.layer.cornerRadius = 5
    startBtn.layer.borderColor = UIColor.init(red: 235/255, green: 234/255, blue: 230/255, alpha: 1).cgColor
  }
}
