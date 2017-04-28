//
//  SignUpViewController.swift
//  MyFood
//
//  Created by Nguyen Thanh Ty on 4/28/17.
//  Copyright © 2017 Asian Tech Co., Ltd. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
  @IBOutlet weak private var usernameField: UITextField!
  @IBOutlet weak private var passwordField: UITextField!
  @IBOutlet weak private var firstNameField: UITextField!
  @IBOutlet weak private var lastNameField: UITextField!
  @IBOutlet weak private var registerButton: UIButton!
  override func viewDidLoad() {
    super.viewDidLoad()
    setupView()
  }
  
  func setupView() {
    navigationItem.title = "Sign Up"
    usernameField.underlined()
    usernameField.attributedPlaceholder = NSAttributedString(string: "Username", attributes: [NSForegroundColorAttributeName: UIColor.white])
    passwordField.underlined()
    passwordField.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSForegroundColorAttributeName: UIColor.white])
    firstNameField.underlined()
    firstNameField.attributedPlaceholder = NSAttributedString(string: "First name", attributes: [NSForegroundColorAttributeName: UIColor.white])
    lastNameField.underlined()
    lastNameField.attributedPlaceholder = NSAttributedString(string: "Last name", attributes: [NSForegroundColorAttributeName: UIColor.white])
    registerButton.layer.cornerRadius = 20
  }
}
