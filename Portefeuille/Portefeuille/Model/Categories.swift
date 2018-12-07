//
//  Categories.swift
//  Portefeuille
//
//  Created by Jesus Enrique Nava Sanchez on 30/11/2018.
//  Copyright © 2018 Jesus Enrique Nava Sanchez. All rights reserved.
//

import Foundation
class Categories
{
    private var categories = [Categorie]()
    
    public func addCategorie(nom:String)
    {
       categories.append(Categorie(Nom: nom))
    }
    
    public func voirCategories()
    {
        for x in 0...categories.count{
            print(categories[x].getNom())
        }
    }
    
    public func getArray()->[Categorie]
    {
        return self.categories
    }
}
