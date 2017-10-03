//
//  SignUpViewController.swift
//  KitchenConnection
//
//  Created by Ruben Garcia on 9/30/17.
//  Copyright © 2017 Ruben Garcia. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var emailSignUpTextField: UITextField!
    @IBOutlet weak var passwordSignUpTextField: UITextField!
    @IBOutlet weak var repeatPasswordSignUpTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailSignUpTextField.delegate = self
        passwordSignUpTextField.delegate = self
        repeatPasswordSignUpTextField.delegate = self
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

extension SignUpViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if (textField == self.emailSignUpTextField) || (textField == self.passwordSignUpTextField) || (textField == self.repeatPasswordSignUpTextField){
            textField.resignFirstResponder()
        }
        return true
    }
}
