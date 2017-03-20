//
//  ViewController.swift
//  pListDemoTwo
//
//  Created by Ahmed on 7/27/16.
//  Copyright © 2016 PiTechnologies. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        
        // 1. Create new array with data
        // 2. Save array data to file
        // 3. Create new array with contents of file
        // 4. Print the new array
        
        // 1. Create new array with data
        let originalArray:NSMutableArray = NSMutableArray()
        originalArray.addObject("KW")
        originalArray.addObject("SA")
        originalArray.addObject("QA")
        
        
        // 2. Save array data to file
        
        let pathManager:PathsManager = PathsManager()
        let filePath:String = pathManager.pathForInternalFile("countries")
        print(filePath)
        
        
        originalArray.writeToFile(filePath, atomically: true)

        
        // 3. Create new array with contents of file
        let copiedArray:NSMutableArray = NSMutableArray(contentsOfFile: filePath)!
    
        
        // 4. Print the new array
        for item in copiedArray{
            print(item)
        }
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

