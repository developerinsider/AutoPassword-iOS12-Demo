//
//  OTPViewController.swift
//  AutoPassword-iOS12
//
//  Created by Vineet Choudhary on 23/09/18.
//  Copyright © 2018 Developer Insider. All rights reserved.
//

import UIKit

class OTPViewController: UIViewController {

    @IBOutlet weak var otpTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        otpTextField.textContentType = .oneTimeCode
    }

    @IBAction func verifyOTPAction(_ sender: UIButton) {
        let mainStoryboard = UIStoryboard.init(name: "Main", bundle: nil)
        let homeViewController = mainStoryboard.instantiateViewController(withIdentifier: String(describing: HomeViewController.self))
        navigationController?.pushViewController(homeViewController, animated: true)
    }
    
}
