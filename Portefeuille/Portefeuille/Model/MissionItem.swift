//
//  MissionItem.swift
//  Portefeuille
//
//  Created by Jesus Enrique Nava Sanchez on 06/12/2018.
//  Copyright © 2018 Jesus Enrique Nava Sanchez. All rights reserved.
//

import Foundation
struct MissionItem : Codable{
    
    var title:String
    var completed:Bool
    var createdAt:Date
    var itemIdentifier: UUID
    
    func saveItem()
    {
        DataManager.save(self, with: itemIdentifier.uuidString)
    }
    
    func deleteItem(){
        DataManager.delete(itemIdentifier.uuidString)
    }
    
    mutating func markAsCompleted(){
        self.completed = true
        DataManager.save(self, with: itemIdentifier.uuidString)
        
    }
}
