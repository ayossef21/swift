//
//  ViewController.swift
//  pListDemoThree
//
//  Created by Ahmed on 7/27/16.
//  Copyright © 2016 PiTechnologies. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let firstTime = NSUserDefaults.standardUserDefaults().valueForKey("firstTimeFlag")
        if firstTime == nil {
            print("This is your first time")
            NSUserDefaults.standardUserDefaults().setValue("NO", forKey: "firstTimeFlag")
        }
        else {
            print("You have been here before")
        }
        
        
        
        let manager:PathsManager = PathsManager()
        
        // 1. Read file from bundle to array 
        let bundleFilePath:String = manager.pathForBundleFile("InitCountries")
        let countriesList:NSMutableArray = NSMutableArray(contentsOfFile: bundleFilePath)!
        
        
        
        // 2. Add items to array 
        countriesList.addObject("BA")
        countriesList.addObject("UAE")

        
        
        // 3. Write values to file
        let internalFilePath = manager.pathForInternalFile("FinalCountries")
        countriesList.writeToFile(internalFilePath, atomically: true)
        
        
        // 4. Print file path
        print(bundleFilePath)
        print(internalFilePath)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

