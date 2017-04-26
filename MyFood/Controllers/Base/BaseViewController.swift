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

    override required init(nibName: String?, bundle: Bundle?) {
        super.init(nibName: nibName, bundle: bundle)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func setup() {
        super.setup()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isTranslucent = false
        view.backgroundColor = Color.lightBeige
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
}
