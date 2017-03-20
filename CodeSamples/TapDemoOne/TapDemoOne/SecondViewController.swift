//
//  SecondViewController.swift
//  TapDemoOne
//
//  Created by Ahmed on 7/20/16.
//  Copyright © 2016 PiTechnologies. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var displayLabel:UILabel?
    
    @IBAction func readData(){
        
        let userDefaults = NSUserDefaults.standardUserDefaults()
        
        let name:String = userDefaults.valueForKey("name") as! String
        
        displayLabel?.text = name
    
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

