//
//  Lecture.swift
//  Lecture2_rinat.borovskikh
//
//  Created by Rinat Borovskikh on 12.09.14.
//  Copyright (c) 2014 rinat.borovskikh. All rights reserved.
//

import Foundation

class Lecture {
    
    var name     = "",
        date     = "",
        desc     = "",
        imageURL = "",
        videoURL = "",
        viewed   = false;
    
    init(lectureData:NSDictionary) {
        //println("Lecture data is: \(lectureData)")
        
        self.name     = lectureData.valueForKey("name") as String
        self.desc     = lectureData.valueForKey("description") as String
        self.date     = lectureData.valueForKey("data") as String
        self.imageURL = lectureData.valueForKey("image") as String
        self.videoURL = lectureData.valueForKey("video") as String
    }
}