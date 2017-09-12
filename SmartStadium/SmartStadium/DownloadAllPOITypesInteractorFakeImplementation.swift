//
//  DownloadAllPOITypesInteractorFakeImplementation.swift
//  SmartStadium
//
//  Created by Alejandro Cabral Benavente on 11/9/17.
//  Copyright © 2017 Smartech. All rights reserved.
//

import Foundation

class DownloadAllPOITypesInteractorFakeImplementation : DownloadAllPOITypesInteractor {

    func execute(onSuccess: sucessClosure, onError: errorClosure) {
        
        var poiTypeslist = PointOfInterestTypesList()
        
        for i in ["Puestos de bebidas", "Baños", "Salidas", "Tienda", "Museo", "Mi asiento"] {
            let type = PointOfInterestType(name: i, description: "Description de \(i)", icon: "AppIcon")
            poiTypeslist.add(poiType: type)
        }
        
        // Me aseguro de devolver la respuesta en el hilo principal
        
    }
    
}
