//
//  ViewController.swift
//  pListTwo
//
//  Created by Ahmed on 7/21/16.
//  Copyright © 2016 PiTechnologies. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var userInputTF:UITextField?
    @IBOutlet weak var countDisplayLabel:UILabel?
    
    var fileName:String = "data"
    
    @IBAction func saveData(){
    
        // 1. read user input from the text field
        let userInputText:String = (userInputTF?.text!)!
        
        // 2. read contents of pList file into a mutable array
        let list:NSMutableArray = readArrayFromFile()
        
        
        // 3. add new input to the mutable array
        list.addObject(userInputText)
        
    
        // 4. write the updated array back to file
        let dataFilePath = PathsManager().pathForInternalFile(fileName)
        list.writeToFile(dataFilePath, atomically: true)
        
    }
    
    
    @IBAction func readData(){
    
        // 1. Read plist to an array
        let list:NSMutableArray = readArrayFromFile()
        
        // 2. Set label value =  array count
        countDisplayLabel?.text = "\(list.count)"
        
        // 3. Loop on array to print values onto console
        for value in list{
            print(value as! String)
        }
        
    }
    
    
    func readArrayFromFile() -> NSMutableArray{
        let dataFilePath = PathsManager().pathForInternalFile(fileName)
        var list:NSMutableArray? = NSMutableArray(contentsOfFile: dataFilePath)
        if list == nil {
            list = NSMutableArray()
            list?.writeToFile(dataFilePath, atomically: true)
        }
        return list!
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

