//
//  LectureDetailViewController.swift
//  Lecture2_rinat.borovskikh
//
//  Created by Rinat Borovskikh on 11.09.14.
//  Copyright (c) 2014 rinat.borovskikh. All rights reserved.
//

import UIKit

class LectureDetailViewController: UIViewController {

    @IBOutlet weak var lectureTitleLabel: UILabel!
    
    var lectureTitle:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
