//
//  DataProvider.swift
//  CountriesDemo
//
//  Created by Ahmed on 7/18/16.
//  Copyright © 2016 PiTechnologies. All rights reserved.
//

import UIKit

class DataProvider: NSObject {

    
    var countries:[String] = ["KW", "SA", "BA", "QA", "UAE", "OM"]
    var currentCountryIndex:Int = 0
    
    func nextCountry()-> String{
        currentCountryIndex+=1
        if currentCountryIndex == 6 {
            currentCountryIndex = 0
        }
        return countries[currentCountryIndex]
    }
    
    
    func prevCountry()->String{
        currentCountryIndex-=1
        if currentCountryIndex == -1{
            currentCountryIndex = 5
        }
        return countries[currentCountryIndex]
    }
    
    
    func firstCountry()-> String{
        return countries[0]
    }
    
}
