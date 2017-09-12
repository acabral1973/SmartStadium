//
//  DownloadAllPOITypesInteractor.swift
//  SmartStadium
//
//  Created by Alejandro Cabral Benavente on 11/9/17.
//  Copyright © 2017 Smartech. All rights reserved.
//

import Foundation

typealias sucessClosure = (PointOfInterestTypesList) -> Void
typealias errorClosure = ((Error) -> Void)?

protocol DownloadAllPOITypesInteractor {

    func execute(onSuccess: sucessClosure, onError: errorClosure)
}
