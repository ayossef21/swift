//
//  Networking.swift
//  LadyMall
//
//  Created by Naser Mohamed on 4/18/16.
//  Copyright © 2016 PiTechnologies. All rights reserved.
//

import UIKit
import SystemConfiguration
import Alamofire
import SwiftyJSON
import ObjectMapper

protocol NetworkCaller{
    func setResponse(resp:NSDictionary, reqId:Int)
}

class Networking: NSObject {
    
    struct NET {
        static var HOST_URL = ""
    }
    


    
    
    
    func AMData(url:String, params:[String:AnyObject], reqId:Int, caller:NetworkCaller?)-> OutputResult{
        
        var result:OutputResult = OutputResult(status: true)
        Alamofire.request(.POST, url, parameters: params).validate().responseJSON { response in
            
            switch response.result {
            case .Success:
                if let value = response.result.value {
//                    let json = JSON(value)
//                    print("JSON: \(json)")
//                    result =  OutputResult(status: true)
//                    result.items = json["items"].arrayObject!
                    if let realCaller = caller{
                        realCaller.setResponse(value as! NSDictionary, reqId: reqId)
                    }
                }
                
            case .Failure(let error):
                print(error)
                result =  OutputResult(status: false)
                result.items = []
                if let realCaller = caller{
                    realCaller.setResponse(["Error":"Error"], reqId: reqId)
                }
            }
            print("result was \(response.result)")
        }
        return result
    }
    
    
    
}
