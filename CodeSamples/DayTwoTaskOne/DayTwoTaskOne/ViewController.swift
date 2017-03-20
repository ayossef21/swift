//
//  ViewController.swift
//  DayTwoTaskOne
//
//  Created by Ahmed on 7/17/16.
//  Copyright © 2016 PiTechnologies. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        
        let names = ["Adnan", "Salman", "Ibrahim"]
        
        
        let values = ["Adnan":"Mac Book", "Salman": "Dell", "Ibrahim":"Nokia"]
        
        
        
        for name in names  {
            print("Hello \(name)")
            
            var machine = values[name]
            print("\(name) has machine of type \(machine)")
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

