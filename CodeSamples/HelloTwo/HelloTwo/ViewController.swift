//
//  ViewController.swift
//  HelloTwo
//
//  Created by Ahmed on 7/18/16.
//  Copyright © 2016 PiTechnologies. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var displayLabel:UILabel?
    
    @IBAction func actionMethod(){
        displayLabel?.text = "Trust"
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
     
        let dict:NSMutableDictionary = NSMutableDictionary()
        dict.setValue("", forKey: "k1")
        let s:String = dict.valueForKey("k1") as! String
        print(s)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

