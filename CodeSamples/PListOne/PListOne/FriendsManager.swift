//
//  FriendsManager.swift
//  PListOne
//
//  Created by Ahmed on 7/20/16.
//  Copyright © 2016 PiTechnologies. All rights reserved.
//

import UIKit

class FriendsManager: NSObject {

    
    
    func readList()->NSMutableArray{
        
        let friendObjectList:NSMutableArray = NSMutableArray()
        let filePath:String =
            NSBundle.mainBundle().pathForResource("FreindsList", ofType: "plist")!
        
        let list = NSArray(contentsOfFile: filePath)
        
        for item in list! {
            let dictValues:NSDictionary = item as! NSDictionary
            let newFreind:FriendModel = FriendModel()
            
            newFreind.name = dictValues.valueForKey("name") as! String
            newFreind.email = dictValues.valueForKey("email") as! String
            newFreind.phone = dictValues.valueForKey("phone") as! String
            friendObjectList.addObject(newFreind)
            
        }
        return friendObjectList
        
    }
    
    
}
