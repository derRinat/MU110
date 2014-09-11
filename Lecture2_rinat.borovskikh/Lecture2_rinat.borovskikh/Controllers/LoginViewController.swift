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

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  
    @IBAction func loginAction(sender: UIButton) {
        
        navigationController.dismissViewControllerAnimated(true, completion: nil)
        
        /*
        // Define alert action
        
        var firstAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, {
            UIAlertAction in
            println("OK pressed")
        })
        
        // Init alert
        var alert = UIAlertController(title: "Error", message: "Service unavailable, please try later", preferredStyle: UIAlertControllerStyle.Alert)
        
        // Add action
        alert.addAction(firstAction)
        
        // Place in on scene...
        self.presentViewController(alert, animated: true, completion: nil)
        
        //
        */
        
    }
}
