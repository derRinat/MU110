//
//  ViewController.swift
//  Lecture2_rinat.borovskikh
//
//  Created by Rinat Borovskikh on 07.09.14.
//  Copyright (c) 2014 rinat.borovskikh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
    
        var auth = false
        
        // Init login storyboard and show it at start if user doenst authorized...
        
        if !auth {
            let loginController:UIViewController = UIStoryboard(name: "Authentification", bundle: nil).instantiateInitialViewController() as UIViewController
        
            navigationController!.presentViewController(loginController, animated: true, completion: nil)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

