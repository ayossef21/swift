//
//  ViewController.swift
//  PlistZero
//
//  Created by Ahmed on 7/20/16.
//  Copyright © 2016 PiTechnologies. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let filePath:String =
            NSBundle.mainBundle().pathForResource("Names", ofType: "plist")!
        
        let namesArray:NSArray = NSArray(contentsOfFile: filePath)!
        
        for name in namesArray {
            print(name)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

