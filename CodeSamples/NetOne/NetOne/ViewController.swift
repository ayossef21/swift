//
//  ViewController.swift
//  NetOne
//
//  Created by Ahmed on 7/21/16.
//  Copyright © 2016 PiTechnologies. All rights reserved.
//

import UIKit

class ViewController: UIViewController, NetworkCaller {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let networkManager:Networking = Networking()
        networkManager.AMData("https://jsonplaceholder.typicode.com/posts", params: [:], reqId: 0, caller: self)
        networkManager.AMData("https://jsonplaceholder.typicode.com/posts", params: [:], reqId: 1, caller: self)
        networkManager.AMData("https://jsonplaceholder.typicode.com/posts", params: [:], reqId: 2, caller: self)
        networkManager.AMData("https://jsonplaceholder.typicode.com/posts", params: [:], reqId: 500, caller: self)
        networkManager.AMData("https://jsonplaceholder.typicode.com/posts", params: [:], reqId: 900, caller: self)
        networkManager.AMData("https://jsonplaceholder.typicode.com/posts", params: [:], reqId: 7, caller: self)
        
    }

    func setResponse(resp: NSDictionary, reqId: Int) {
        print("response for request with Id: \(reqId)")
        print(resp.valueForKey("id")!)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

