//
//  DataModel.swift
//  NetOne
//
//  Created by Ahmed on 7/27/16.
//  Copyright © 2016 PiTechnologies. All rights reserved.
//

import Foundation


protocol DataModel {
    func toDictonary()->NSDictionary;
    func setValuesUsingDict(dictValues:NSDictionary);
    func objectsListUsingDictsList(dictValues:NSArray)->NSArray;
}