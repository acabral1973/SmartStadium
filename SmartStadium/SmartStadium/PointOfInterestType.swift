//
//  PointOfInterestType.swift
//  SmartStadium
//
//  Created by Alejandro Cabral Benavente on 11/9/17.
//  Copyright © 2017 Smartech. All rights reserved.
//

import Foundation

public class PointOfInterestType {
    let name: String
    let description: String
    let icon: String

    public init (name: String, description: String, icon: String) {
        (self.name, self.description, self.icon) = (name, description, icon)
    }
}
