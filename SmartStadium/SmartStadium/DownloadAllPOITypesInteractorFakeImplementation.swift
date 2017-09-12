//
//  DownloadAllPOITypesInteractorFakeImplementation.swift
//  SmartStadium
//
//  Created by Alejandro Cabral Benavente on 11/9/17.
//  Copyright © 2017 Smartech. All rights reserved.
//

import Foundation

class DownloadAllPOITypesInteractorFakeImplementation : DownloadAllPOITypesInteractor {
    
   func execute(onSuccess: @escaping (PointOfInterestTypesList) -> Void, onError: errorClosure = nil){
        
        let poiTypeslist = PointOfInterestTypesList()
        let typeNames = ["Restauración", "Servicios", "Accesos", "Lugares especiales", "Emergencias", "Salidas"]
        let typeDescriptions = ["Restaurante, kioskos de bebidas y/o comidas, máquinas de vending",
                                "Baños, información, venta de entradas, depósitos de cojines",
                                "Ascensores, escaleras, acceso a tribunas, accesos adaptados",
                                "Tienda, museo, kiosko de regalos, fotomatón",
                                "Policía, atención médica, seguridad del estadio",
                                "Todas las salidas (estadio, tribuna, planta)"]
        let typeIcons = ["restIcon", "servIcon", "accessIcon", "siteIcon", "sosIcon", "exitIcon"]
    
    for i in 0...5 {
            let type = PointOfInterestType(name: typeNames[i], description: typeDescriptions[i], icon: typeIcons[i])
            poiTypeslist.add(poiType: type)
        }
        
        // Me aseguro de devolver la respuesta en el hilo principal
        OperationQueue.main.addOperation {
            onSuccess(poiTypeslist)
        }
    }
    
}
