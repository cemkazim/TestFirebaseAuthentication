//
//  ViewController.swift
//  TestFirebaseAuthentication
//
//  Created by Cem Kazım on 20.08.2020.
//  Copyright © 2020 Cem Kazım. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func loginButton(_ sender: UIButton) {
        guard let emailTextField = emailTextField.text, let passwordTextField = passwordTextField.text else { return }
        Auth.auth().signIn(withEmail: emailTextField, password: passwordTextField) { (authData, error) in
            if error != nil {
                print("error")
            } else {
                print("successful login")
            }
        }
    }
    
    @IBAction func registerButton(_ sender: UIButton) {
        guard let emailTextField = emailTextField.text, let passwordTextField = passwordTextField.text else { return }
        Auth.auth().createUser(withEmail: emailTextField, password: passwordTextField) { (authData, error) in
            if error != nil {
                print("error")
            } else {
                print("successful register")
            }
        }
    }
}

