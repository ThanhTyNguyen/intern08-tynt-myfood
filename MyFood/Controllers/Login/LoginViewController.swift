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
  @IBOutlet weak private var facebookIcon: UIImageView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupView()
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    navigationController?.setNavigationBarHidden(true, animated: animated)
  }
  
  func setupView() {
    facebookView.layer.cornerRadius = 4
    googleView.layer.cornerRadius = 4
    loginFacebook.layer.cornerRadius = 4
    loginGoogle.layer.cornerRadius = 4
    facebookIcon.layer.cornerRadius = 4
    facebookIcon.layer.masksToBounds = true
  }
  
  @IBAction func signIn(_ sender: UIButton) {
    if let signInVC = NewSignInViewController(nibName: "NewSignInViewController", bundle: nil) as? NewSignInViewController {
      self.addChildViewController(signInVC)
      signInVC.view.frame = CGRect(x: 0.0, y: 20.0, width: view.frame.size.width, height: view.frame.size.height)
      signInVC.view.layer.cornerRadius = 5
      self.view.addSubview(signInVC.view)
      let transition = CATransition()
      transition.duration = 0.5
      transition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
      transition.type = kCATransitionPush
      transition.subtype = kCATransitionFromTop
      navigationController?.view.layer.add(transition, forKey: kCATransition)
      signInVC.didMove(toParentViewController: self)
//      self.view.backgroundColor = Color.darkColor
    }
  }
  
  @IBAction func signUp(_ sender: UIButton) {
    if let signUpVC = NewSignUpViewController(nibName: "NewSignUpViewController", bundle: nil) as? NewSignUpViewController {
      self.addChildViewController(signUpVC)
      signUpVC.view.frame = CGRect(x: 0.0, y: 20.0, width: view.frame.size.width, height: view.frame.size.height)
      signUpVC.view.layer.cornerRadius = 5
      self.view.addSubview(signUpVC.view)
      let transition = CATransition()
      transition.duration = 0.5
      transition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
      transition.type = kCATransitionPush
      transition.subtype = kCATransitionFromTop
      navigationController?.view.layer.add(transition, forKey: kCATransition)
      signUpVC.didMove(toParentViewController: self)
      self.view.backgroundColor = Color.dark
    }
  }
}
