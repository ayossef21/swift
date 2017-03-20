//
//  PathsManager.swift
//  PListOne
//
//  Created by Ahmed on 7/21/16.
//  Copyright © 2016 PiTechnologies. All rights reserved.
//

import UIKit

class PathsManager: NSObject {

    
    func pathForInternalFile(fileName:String) -> String{
        let paths = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0] as String
        let path = paths.stringByAppendingString("/\(fileName).plist")
        let fileManager = NSFileManager.defaultManager()
        if (!(fileManager.fileExistsAtPath(path)))
        {
            fileManager.createFileAtPath(path, contents: nil, attributes: nil)
        }
       return path
    }
    
    
    
    func pathForBundleFile(fileName:String)->String{
        return NSBundle.mainBundle().pathForResource(fileName, ofType: "plist")!
    }
}
