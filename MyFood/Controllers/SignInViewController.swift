//
//  SignInViewController.swift
//  MyFood
//
//  Created by Nguyen Thanh Ty on 4/28/17.
//  Copyright © 2017 Asian Tech Co., Ltd. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
  @IBOutlet weak private var usernameField: UITextField!
  @IBOutlet weak private var passwordField: UITextField!
  @IBOutlet weak private var signInButton: UIButton!
  override func viewDidLoad() {
    super.viewDidLoad()
    setupView()
  }
  
  func setupView() {
    navigationItem.title = "Sign In"
    signInButton.layer.cornerRadius = 20
    usernameField.underlined()
    usernameField.attributedPlaceholder =
      NSAttributedString(string: "Username", attributes: [NSForegroundColorAttributeName: UIColor.white])
    passwordField.underlined()
    passwordField.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSForegroundColorAttributeName: UIColor.white])
  }
}
