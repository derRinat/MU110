//
//  LectureDetailViewController.swift
//  Lecture2_rinat.borovskikh
//
//  Created by Rinat Borovskikh on 11.09.14.
//  Copyright (c) 2014 rinat.borovskikh. All rights reserved.
//

import UIKit

class LectureDetailViewController: UIViewController {
    
    @IBOutlet weak var lectureLabel: UILabel!
    
    var lectureTitle:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        if lectureTitle != lectureLabel.text {
                lectureLabel.text = lectureTitle;
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
    }
}
