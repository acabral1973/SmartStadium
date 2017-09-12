//
//  PointOfInterestTypeList.swift
//  SmartStadium
//
//  Created by Alejandro Cabral Benavente on 11/9/17.
//  Copyright © 2017 Smartech. All rights reserved.
//

import Foundation

public protocol PointOfInterestTypesProtocol {
    func count() -> Int
    func add(poiType: PointOfInterestType)
    func get(index: Int) -> PointOfInterestType
}


public class PointOfInterestTypesList: PointOfInterestTypesProtocol {
    
    private var _poiTypesList: [PointOfInterestType]?
    
    public init() {
        self._poiTypesList = []
    }
    
    public func count() -> Int {
        return (_poiTypesList?.count)!
    }
    
    public func add(poiType: PointOfInterestType) {
        _poiTypesList?.append(poiType)
    }
    
    public func get(index: Int) -> PointOfInterestType {
        return (_poiTypesList?[index])!
    }
    
}
