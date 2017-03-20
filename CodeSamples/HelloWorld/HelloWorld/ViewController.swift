//
//  ViewController.swift
//  HelloWorld
//
//  Created by Ahmed on 7/17/16.
//  Copyright © 2016 PiTechnologies. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        let values = ["k1":"value 1", "k2":"value 2"]
        let s:String? = values["k3"]
        exactString(s!)
        
    }
    
    func exactString(s:String){
        print(s)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

