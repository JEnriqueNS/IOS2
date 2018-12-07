//
//  Categories.swift
//  Portefeuille
//
//  Created by Jesus Enrique Nava Sanchez on 30/11/2018.
//  Copyright © 2018 Jesus Enrique Nava Sanchez. All rights reserved.
//

import Foundation
struct Categories: Codable {
    
    var title: String
    var createdAt: Date
    var itemIdentifier: UUID
    
    func saveItem(){
        DataManager.save(self, with: itemIdentifier.uuidString)
    }
    
    func deleteItem(){
        DataManager.delete(itemIdentifier.uuidString)
    }
    
    func getTitle()->String{
        return self.title
    }
    
}
