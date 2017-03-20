//
//  StoreModel.swift
//  NetOne
//
//  Created by Ahmed on 7/27/16.
//  Copyright © 2016 PiTechnologies. All rights reserved.
//

import Foundation

class StoreModel: NSObject {

    
    var storeName:String = ""
    var storeStatus:String  = ""
    
    
    
    func objectListUsingDictList(dictList:NSArray)->NSArray{
        
        var objectsList:NSMutableArray = NSMutableArray()
        for dictItem in dictList{
            let values:NSDictionary = dictItem as! NSDictionary
            let newStore:StoreModel = StoreModel()
            
            newStore.storeName = values.valueForKey("storeName") as! String
            newStore.storeStatus = values.valueForKey("storeStatus") as! String
            
            objectsList.addObject(newStore)
        }
        return objectsList
    }
}
