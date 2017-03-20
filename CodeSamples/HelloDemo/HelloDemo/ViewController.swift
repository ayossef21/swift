//
//  ViewController.swift
//  HelloDemo
//
//  Created by Ahmed on 7/18/16.
//  Copyright © 2016 PiTechnologies. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var userInput:UITextField?
    @IBOutlet weak var greetingLabel:UILabel?
    
    
    
    @IBAction func sayHello(){
        let username:String = (userInput?.text!)!
        greetingLabel?.text = "Hello, \(username)"
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

