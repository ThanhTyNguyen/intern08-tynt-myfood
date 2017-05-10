//
//  NewSignUpViewController.swift
//  MyFood
//
//  Created by Nguyen Thanh Ty on 4/29/17.
//  Copyright © 2017 Asian Tech Co., Ltd. All rights reserved.
//

import UIKit

class NewSignUpViewController: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
    swipeDownToDismiss()
  }
  
  @IBAction func closeButton(_ sender: UIButton) {
    closeView()
  }
  
  func swipeDownToDismiss() {
    let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(swipeDownAction(sender:)))
    swipeDown.direction = UISwipeGestureRecognizerDirection.down
    view.addGestureRecognizer(swipeDown)
  }
  
  func swipeDownAction(sender: UISwipeGestureRecognizer) {
    closeView()
  }
  
  func closeView() {
    let transition = CATransition()
    transition.duration = 0.5
    transition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
    transition.type = kCATransitionPush
    transition.subtype = kCATransitionFromBottom
    navigationController?.view.layer.add(transition, forKey:kCATransition)
    self.view.removeFromSuperview()
    self.parent?.view.backgroundColor = Color.main
  }
  
  @IBAction func doneButton(_ sender: UIButton) {
    closeView()
  }
  
}
