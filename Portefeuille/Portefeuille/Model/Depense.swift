//
//  Depense.swift
//  Portefeuille
//
//  Created by Jesus Enrique Nava Sanchez on 07/12/2018.
//  Copyright © 2018 Jesus Enrique Nava Sanchez. All rights reserved.
//

import Foundation
struct Depense: Codable {
    
    var jour : Date
    var argent: Float
    var categorie: String
    var desription: String
    var itemIdentifier: UUID
    
    func saveItem()
    {
        DataManager.save(self, with: itemIdentifier.uuidString)
    }
    
    func deleteItem(){
        DataManager.delete(itemIdentifier.uuidString)
    }
}
