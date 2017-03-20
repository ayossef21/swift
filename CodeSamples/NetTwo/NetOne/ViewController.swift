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
        
        let urlString:String =
            "http://ec2-54-164-33-133.compute-1.amazonaws.com:8080/EMallBE/fetch_stores"
        let networkManager:Networking = Networking()
        
        networkManager.AMData(urlString, params: [:], reqId: 1, caller: self)
        
        }

    func setResponse(resp: NSDictionary, reqId: Int) {
        let items:NSArray = resp.valueForKey("items") as! NSArray
        let storesList:NSArray = StoreModel().objectListUsingDictList(items)
        let myStore = (storesList.objectAtIndex(0) as! StoreModel).storeName
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

