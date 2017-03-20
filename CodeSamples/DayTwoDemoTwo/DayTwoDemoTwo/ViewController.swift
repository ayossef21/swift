//
//  ViewController.swift
//  DayTwoDemoTwo
//
//  Created by Ahmed on 7/17/16.
//  Copyright © 2016 PiTechnologies. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let objectOne:ClassA = ClassA()
        let objectTwo:ClassA = ClassA()
        
        
        let value = objectOne.sum()
        print("Overall Sum = \(value)")
        
        
        
        let objectB:ClassB = ClassB()
        
        print("Class B Sum  = \(objectB.sum())")
        
        
        
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

