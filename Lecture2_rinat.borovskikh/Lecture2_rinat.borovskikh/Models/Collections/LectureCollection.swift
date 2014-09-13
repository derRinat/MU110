//
//  LectureCollection.swift
//  Lecture2_rinat.borovskikh
//
//  Created by Rinat Borovskikh on 12.09.14.
//  Copyright (c) 2014 rinat.borovskikh. All rights reserved.
//

import Foundation

class LectureCollection: CollectionInterface {
    
    var collection:Array<AnyObject>
    
    init() {
        collection = []
    }
    
    func get() -> Array<AnyObject> {
        return collection
    }
    
    func add(lecture:AnyObject) {
        collection += [lecture]
    }
    
    func getSize() -> Int {
        return collection.count
    }
    
    func getByIndex(index:Int) -> AnyObject? {
        return collection[index] as Lecture
    }
    
    func setByIndex(index:Int, value:AnyObject) {
        collection[index] = value
    }
    
    func reset() {
        collection = [];
    }
}