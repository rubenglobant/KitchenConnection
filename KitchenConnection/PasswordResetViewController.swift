//
//  PasswordResetViewController.swift
//  KitchenConnection
//
//  Created by Ruben Garcia on 9/30/17.
//  Copyright © 2017 Ruben Garcia. All rights reserved.
//

import UIKit

class PasswordResetViewController: UIViewController {

    @IBOutlet weak var emailResetTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailResetTextField.delegate = self
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

extension PasswordResetViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if (textField == self.emailResetTextField){
            textField.resignFirstResponder()
        }
        return true
    }
}
