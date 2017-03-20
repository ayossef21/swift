//
//  ViewController.swift
//  CountriesDemo
//
//  Created by Ahmed on 7/18/16.
//  Copyright © 2016 PiTechnologies. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var displayLabel:UILabel?
    var dataP:DataProvider = DataProvider()
    
    @IBAction func next(){
        displayLabel!.text = dataP.nextCountry()
    }
    
    @IBAction func prev(){
        
        displayLabel?.text = dataP.prevCountry()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayLabel!.text = dataP.firstCountry()
        
        
        
        
        
        
        
        
        
        
        
        
        
        var list:NSMutableArray = NSMutableArray() // define array
        
        list.addObject("New Item")
        
        list.addObject("Another Item")
        
        var value1:String = list.objectAtIndex(0) as! String // get value from array
        
        var value2:String = list.objectAtIndex(0) as! String // get value from array
        
        // as! is used to cast AnyObject to String
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

