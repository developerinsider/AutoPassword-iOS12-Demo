//
//  SignUpViewController.swift
//  AutoPassword-iOS12
//
//  Created by Vineet Choudhary on 23/09/18.
//  Copyright © 2018 Developer Insider. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        usernameTextField.textContentType = .username
        usernameTextField.keyboardType = .emailAddress
        usernameTextField.textContentType = .newPassword
        
        //Custom password rule for automatic passwords
        //https://developer.apple.com/password-rules/
        let passwordRuleDescription = "required: lower; required: upper; required: digit; minlength: 8; maxlength: 16;"
        let passwordRules = UITextInputPasswordRules(descriptor: passwordRuleDescription)
        passwordTextField.passwordRules = passwordRules
    }

    @IBAction func signUpAction(_ sender: Any) {
        UserDefaults.standard.username = usernameTextField.text
        
        let mainStoryboard = UIStoryboard.init(name: "Main", bundle: nil)
        let homeViewController = mainStoryboard.instantiateViewController(withIdentifier: String(describing: HomeViewController.self))
        navigationController?.pushViewController(homeViewController, animated: true)
    }
}
