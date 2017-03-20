//
//  ViewController.swift
//  DataDemo
//
//  Created by Ahmed on 7/19/16.
//  Copyright © 2016 PiTechnologies. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let array:NSArray = NSArray(objects: "Orange", "Apple", "Berry")
        let keys:[String] = ["o", "a", "b"]
        let values:[String] = ["Orange", "Apple", "Berry"]
        
        let dict:NSDictionary = NSDictionary(objects: values, forKeys: keys)
        
        
        let mArray:NSMutableArray = NSMutableArray()
        var mDict:NSMutableDictionary = NSMutableDictionary()
        
        
        
        mArray.addObject("Oragne")
        mArray.addObject("Apple")
        mArray.addObject("Berry")
        
        
        
        mDict.setValue("Orange", forKey: "o")
        mDict.setValue("Apple", forKey: "a")
        mDict.setValue("Berry", forKey: "b")

        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

