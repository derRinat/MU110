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
    @IBOutlet weak var lectureDesc: UILabel!
    @IBOutlet weak var lectureDate: UILabel!
    
    var lecture:Lecture?
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        if lecture?.name != lectureLabel.text {
            lectureLabel.text = lecture?.name
            lectureDesc.text  = lecture?.desc
            lectureDate.text  = lecture?.date
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
    }
}
