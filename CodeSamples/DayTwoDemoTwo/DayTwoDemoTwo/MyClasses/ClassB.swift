//
//  ClassB.swift
//  DayTwoDemoTwo
//
//  Created by Ahmed on 7/17/16.
//  Copyright © 2016 PiTechnologies. All rights reserved.
//

import UIKit

class ClassB: ClassA {
    
    
    override func sum() -> Int {
        print("Old value = \(super.sum())")
        return x + y
    }
    
    
}
