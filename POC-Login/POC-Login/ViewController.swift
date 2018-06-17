//
//  ViewController.swift
//  POC-Login
//
//  Created by Felipe Lefèvre Marino on 6/17/18.
//  Copyright © 2018 Felipe Marino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    // MARK: Tocuhes
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //resign view or any subviews as first responders when touched
        self.view.endEditing(false)
    }
}
