//
//  Categorie.swift
//  Portefeuille
//
//  Created by Jesus Enrique Nava Sanchez on 30/11/2018.
//  Copyright © 2018 Jesus Enrique Nava Sanchez. All rights reserved.
//

import Foundation
class Categorie
{
    private let nom: String
    
    init(Nom:String) {
        self.nom = Nom
    }
    
    public func getNom() ->String
    {
        return self.nom
    }
}
