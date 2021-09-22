//
//  ViewController.swift
//  TextField
//
//  Created by Krzysztof Jankowski on 22/09/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private(set) var userNameField: UITextField!
    
    @IBOutlet private(set) var passwordField: UITextField!


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

extension ViewController: UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if textField === userNameField {
            return !string.contains(" ")
        } else {
            return true
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField === userNameField {
            passwordField.becomeFirstResponder()
        } else {
            guard let username = userNameField.text, let password = passwordField.text else {
                return false
            }
            passwordField.resignFirstResponder()
            performLogin(username: username, password: password)
        }
        return false
    }
    
    func performLogin(username: String, password: String) {
        print("\(username)")
        print("\(password)")
    }
}
