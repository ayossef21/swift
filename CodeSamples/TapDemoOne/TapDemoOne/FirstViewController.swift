//
//  FirstViewController.swift
//  TapDemoOne
//
//  Created by Ahmed on 7/20/16.
//  Copyright © 2016 PiTechnologies. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    
    @IBOutlet weak var nameTextF:UITextField?
    
    
    @IBAction func saveAction(){
        
        var userInput:String = (nameTextF?.text)!
        
        let userDefaults = NSUserDefaults.standardUserDefaults()
        
        userDefaults.setValue(userInput, forKey: "name")
        
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

