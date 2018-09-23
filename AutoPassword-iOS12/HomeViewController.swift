//
//  HomeViewController.swift
//  AutoPassword-iOS12
//
//  Created by Vineet Choudhary on 23/09/18.
//  Copyright © 2018 Developer Insider. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        //Removes login fields from view hierarchy
        if let topViewController = navigationController?.topViewController {
            navigationController?.viewControllers = [topViewController]
        }
    }
    
    @IBAction func changePasswordAction(_ sender: UIButton) {
        let mainStoryboard = UIStoryboard.init(name: "Main", bundle: nil)
        let homeViewController = mainStoryboard.instantiateViewController(withIdentifier: String(describing: ChangePasswordViewController.self))
        navigationController?.pushViewController(homeViewController, animated: true)
    }
}
