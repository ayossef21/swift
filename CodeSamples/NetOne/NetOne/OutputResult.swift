//
//  OutputResult.swift
//  LadyMall
//
//  Created by Ahmed on 5/18/16.
//  Copyright © 2016 PiTechnologies. All rights reserved.
//

import UIKit

class OutputResult: NSObject {

    var errorCode:String = ""
    var errorMsg:String = ""
    var errorDetailsAr:String = ""
    var errorDetailsEn:String = ""
    var items:NSArray! = []
    
    init(status:Bool) {
        if status {
            errorCode = "0"
            errorMsg = "ok_msg"
        }
        else {
            errorCode = "-1"
            errorMsg = "error"
        }
    }
    
}
