//
//  LectureCollection.swift
//  Lecture2_rinat.borovskikh
//
//  Created by Rinat Borovskikh on 12.09.14.
//  Copyright (c) 2014 rinat.borovskikh. All rights reserved.
//

import Foundation

class LectureCollection {
    
    var collection:Array<Lecture>;
    
    init() {
        collection = [];
    }
    
    func get() -> Array<Lecture> {
        return collection
    }
    
    func add(lecture:Lecture) { 
        collection += [lecture]
    }
    
    func getSize() -> Int {
        return collection.count
    }
    
    func getByIndex(index:Int) -> Lecture? {
        return collection[index] 
    }
    
    func reset() {
        collection = [];
    }
}