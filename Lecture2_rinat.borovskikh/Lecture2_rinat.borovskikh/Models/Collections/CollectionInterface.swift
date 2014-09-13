//
//  CollectionInterface.swift
//  Lecture2_rinat.borovskikh
//
//  Created by Rinat Borovskikh on 13.09.14.
//  Copyright (c) 2014 rinat.borovskikh. All rights reserved.
//

import Foundation

protocol CollectionInterface {
    
    var collection:[AnyObject] {get set}
    
    func get() ->Array<AnyObject>
    func add(entity: AnyObject)
    func getSize() -> Int
    func getByIndex(index:Int) -> AnyObject?
    func setByIndex(index:Int, value: AnyObject)
    func reset()
}