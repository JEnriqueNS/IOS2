//
//  Devise.swift
//  Portefeuille
//
//  Created by Eric Duong on 03/12/2018.
//  Copyright © 2018 Jesus Enrique Nava Sanchez. All rights reserved.
//

import Foundation
class Devise {
    
    private var amt: Int = 0

    func getamt() -> Int{
        return amt
    }
    
    func setamt(amt: Int){
        self.amt = amt
    }
    
    func updateAmount() -> String? {
        let formatter = NumberFormatter()
        formatter.numberStyle = NumberFormatter.Style.currency
        let amount = Double(amt/100) + Double (amt%100)/100
        return formatter.string(from: NSNumber(value: amount))
    }
}
