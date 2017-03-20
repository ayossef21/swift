//
//  FileUtils.swift
//  TapsOne
//
//  Created by Ahmed on 7/20/16.
//  Copyright © 2016 PiTechnologies. All rights reserved.
//

import UIKit

class FileUtils: NSObject {

    
    func filePath(fileName:String)->String{
//        let filemanager = NSFileManager.defaultManager()
        let documentsPath : AnyObject = NSSearchPathForDirectoriesInDomains(.DocumentDirectory,.UserDomainMask,true)[0]
        let destinationPath:NSString = documentsPath.stringByAppendingString(fileName)
        return destinationPath as String
    }
}
