//
//  ViewController.swift
//  SwiftOne
//
//  Created by Ahmed on 7/14/16.
//  Copyright © 2016 PiTechnologies. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let names = ["ahmed", "mohamed", "mohamed",
                "mohamed", "Ibrahim", "Faisal","ahmed"]
        
        
        var nameOcc = 0
        var searchName = "mohamed"
        
        
        
        
        for name in names{
            if name == searchName{
                nameOcc++
            }
        }
        
        print("Name: \(searchName) was found \(nameOcc) times")
        
        
        
        
        
        
        
        
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

