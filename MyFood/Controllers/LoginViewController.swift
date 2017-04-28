//
//  LoginViewController.swift
//  MyFood
//
//  Created by Nguyen Thanh Ty on 4/28/17.
//  Copyright © 2017 Asian Tech Co., Ltd. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
  @IBOutlet weak private var facebookView: UIView!
  @IBOutlet weak private var googleView: UIView!
  @IBOutlet weak private var loginFacebook: UIButton!
  @IBOutlet weak private var loginGoogle: UIButton!
  override func viewDidLoad() {
    super.viewDidLoad()
    setupView()
  }
  
  func setupView() {
    navigationController?.navigationBar.isTranslucent = false
    navigationItem.title = "Login"
    facebookView.layer.cornerRadius = 4
    googleView.layer.cornerRadius = 4
    loginFacebook.layer.cornerRadius = 4
    loginGoogle.layer.cornerRadius = 4
  }
  
  @IBAction func signIn(_ sender: UIButton) {
    navigationController?.pushViewController(SignInViewController(), animated: true)
  }
  
  @IBAction func signUp(_ sender: UIButton) {
    navigationController?.pushViewController(SignUpViewController(), animated: true)
  }
}
