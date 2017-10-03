//
//  LoginViewController.swift
//  KitchenConnection
//
//  Created by Ruben Garcia on 9/28/17.
//  Copyright © 2017 Ruben Garcia. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        passwordTextField.delegate = self
        emailTextField.delegate = self
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

extension LoginViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if (textField == self.emailTextField) || (textField == self.passwordTextField) {
            textField.resignFirstResponder()
        }
        return true
    }
}
