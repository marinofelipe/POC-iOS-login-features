//
//  ViewController.swift
//  POC-Login
//
//  Created by Felipe Lefèvre Marino on 6/17/18.
//  Copyright © 2018 Felipe Marino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        usernameTextField.addTarget(self, action: #selector(editingChanged), for: .editingChanged)
        passwordTextField.addTarget(self, action: #selector(editingChanged), for: .editingChanged)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        usernameTextField.text?.removeAll()
        passwordTextField.text?.removeAll()
    }

    // MARK: Touches
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //resign view or any subviews as first responders when touched
        self.view.endEditing(false)
    }
}

// MARK: Text fields editing changed
extension ViewController {
    
    @objc func editingChanged(_ textField: UITextField) {
        if let usernameText = usernameTextField.text, !usernameText.isEmpty,
            let passwordText = passwordTextField.text, !passwordText.isEmpty {
            
            loginButton.isEnabled = true
        } else {
            loginButton.isEnabled = false
        }
    }
}
