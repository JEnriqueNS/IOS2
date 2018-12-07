//
//  Jour.swift
//  Portefeuille
//
//  Created by Jesus Enrique Nava Sanchez on 30/11/2018.
//  Copyright © 2018 Jesus Enrique Nava Sanchez. All rights reserved.
//

import Foundation
class Jour
{
    private var jour: Date
    private var cantite: Float
    private let categorie: String
    private var description: String
    init(Jour: Date, Cantite:Float, Catego: String, Description: String) {
        self.jour = Jour
        self.cantite = Cantite
        self.categorie = Catego
        self.description = Description
    }
    
    public func getJour()->Date
    {
        return self.jour
    }
    
    public func getCantite()->Float
    {
        return self.cantite
    }
    
    public func getCategorie()->String
    {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "de_FR")
        formatter.dateFormat = "dd MMMM yyyy"
        return formatter.string(from: jour)
    }
    
    public func getDescription()->String
    {
        return self.description
    }
    
    
    
}
