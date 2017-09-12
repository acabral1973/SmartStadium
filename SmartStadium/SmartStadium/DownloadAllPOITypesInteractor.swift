//
//  DownloadAllPOITypesInteractor.swift
//  SmartStadium
//
//  Created by Alejandro Cabral Benavente on 11/9/17.
//  Copyright © 2017 Smartech. All rights reserved.
//

import Foundation

typealias errorClosure = ((Error) -> Void)?

protocol DownloadAllPOITypesInteractor {

    func execute(onSuccess: @escaping (PointOfInterestTypesList) -> Void, onError: errorClosure)
}
