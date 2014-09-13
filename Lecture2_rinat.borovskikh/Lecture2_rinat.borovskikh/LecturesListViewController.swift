//
//  ViewController.swift
//  Lecture2_rinat.borovskikh
//
//  Created by Rinat Borovskikh on 07.09.14.
//  Copyright (c) 2014 rinat.borovskikh. All rights reserved.
//

import UIKit
import Alamofire

class LecturesListViewController: UITableViewController {
    
    var lectureCollection = LectureCollection(),
        config = Config()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        var auth = false
        
        // Init login storyboard and show it at start if user doenst authorized...
        
        if !auth {
            let loginController:UIViewController = UIStoryboard(name: "Authentification", bundle: nil).instantiateInitialViewController() as UIViewController
        
            navigationController!.presentViewController(loginController, animated: true, completion: nil)
        }
        
        self.loadCollectionData(lectureCollection);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return lectureCollection.getSize()
    }
    
    override func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell
    {
        let lectureCell = tableView.dequeueReusableCellWithIdentifier("LectureCell", forIndexPath: indexPath) as UITableViewCell
        
        let lecture = lectureCollection.getByIndex(indexPath.row)!;
        lectureCell.textLabel?.text = lecture.name
        
        if lecture.viewed == true {
            lectureCell.textLabel.textColor = UIColor(red: 0.5, green: 0.0, blue: 0.5, alpha: 1.0)
        }
        
        return lectureCell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowDetail" {
            if let indexPath = tableView.indexPathForSelectedRow() {
                
                lectureCollection.getByIndex(indexPath.row)?.viewed = true;
                
                (segue.destinationViewController as LectureDetailViewController).lecture = lectureCollection.getByIndex(indexPath.row)!
            }
        }
    }
         
    // TODO: make in another queue...
    
    private func loadCollectionData(collection:LectureCollection) {
        
         Alamofire
        .request(.GET, config.lecturesURL)
            .responseJSON {(request, response, JSON, error) in
                
                if JSON?.count == nil {
                    return
                }
                
                if JSON?.count == 0 {
                    return
                }
 
                if let json:NSArray = JSON as? NSArray
                {
                    for item in json
                    {
                        var i:NSDictionary = item as NSDictionary
                        collection.add(Lecture(lectureData: i))
                    }
                    
                    self.tableView.reloadData();
                }
        }
    }
}

