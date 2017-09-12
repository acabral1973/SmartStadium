//
//  SearchViewController.swift
//  SmartStadium
//
//  Created by Alejandro Cabral Benavente on 7/9/17.
//  Copyright © 2017 Smartech. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
    
    var poiTypesList : PointOfInterestTypesList?
    @IBOutlet weak var poiTypesListCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setBackground(imageBack: "fondo_general")
        
        let downloadAllPOITypesInteractor : DownloadAllPOITypesInteractor = DownloadAllPOITypesInteractorFakeImplementation()
        downloadAllPOITypesInteractor.execute(onSuccess: { (poiTypesList: PointOfInterestTypesList) in
            // Clausura para cuando el download acaba bien
            self.poiTypesList = poiTypesList
            self.poiTypesListCollectionView.delegate = self
            self.poiTypesListCollectionView.dataSource = self
            
        }) { (error: Error) in
            // Clausura para cuando el download falla
        }
    }
}

// Creo una extensión para incluir el código que actualizará el CollectionViewController
extension SearchViewController : UICollectionViewDelegate, UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return (self.poiTypesList?.count())!
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        var cell : POITypeCell = collectionView.dequeueReusableCell(withReuseIdentifier: "POITypeCell", for: indexPath) as! POITypeCell
        let poiType : PointOfInterestType = (self.poiTypesList?.get(index: indexPath.row))!
        
        cell.refreshCell(poiType: poiType)
        return cell
    }
}

// Creo un tipo de celda personalizado
final class POITypeCell : UICollectionViewCell {
    var poiType : PointOfInterestType?
    
    @IBOutlet weak var poiTypeIcon: UIImageView!
    @IBOutlet weak var poiTypeName: UILabel!
    @IBOutlet weak var poiTypeDescription: UILabel!
    
    func refreshCell(poiType: PointOfInterestType) {
        self.poiType = poiType
        self.poiTypeName.text = poiType.name
        self.poiTypeDescription.text = poiType.description
        self.poiTypeIcon.image = UIImage(named: poiType.icon)
        
    }
}



