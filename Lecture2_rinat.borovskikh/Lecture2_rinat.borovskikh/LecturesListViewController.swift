//
//  ViewController.swift
//  Lecture2_rinat.borovskikh
//
//  Created by Rinat Borovskikh on 07.09.14.
//  Copyright (c) 2014 rinat.borovskikh. All rights reserved.
//

import UIKit

class LecturesListViewController: UITableViewController {
                            
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
    
    override func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return 10;
    }
    
    override func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell
    {
        let lectureCell = tableView.dequeueReusableCellWithIdentifier("LectureCell", forIndexPath: indexPath) as UITableViewCell
        lectureCell.textLabel?.text = "Лекция \(indexPath.row + 1)"
        return lectureCell
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowDetail" {
            if let indexPath = tableView.indexPathForSelectedRow() {
                
                (segue.destinationViewController as LectureDetailViewController).lectureTitle = "Лекция №\(indexPath.row + 1)"
            }
        }
    }
    

}

