//
//  LoginViewController.swift
//  Lecture2_rinat.borovskikh
//
//  Created by Rinat Borovskikh on 08.09.14.
//  Copyright (c) 2014 rinat.borovskikh. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
  
    @IBAction func loginAction(sender: UIButton) {
        
        navigationController.dismissViewControllerAnimated(true, completion: nil)
        
    }
}
