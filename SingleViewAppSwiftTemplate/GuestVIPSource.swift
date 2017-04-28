//
//  GuestVIPSource.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Michael Guatambu Davis on 4/19/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation

// Entrant Type: sublassB: tier 2
class GuestVIPSource: GuestClassicSource {
    
    var skipLines: Bool = true
    var foodDiscount: Double
    var merchDiscount: Double
    
    init(
        amusementAreaAccess: Bool,
        allRidesAccess: Bool,
        foodDiscount: Double,
        merchDiscount: Double
        ) {
        self.foodDiscount = foodDiscount
        self.merchDiscount = merchDiscount
        super.init(amusementAreaAccess: amusementAreaAccess, allRidesAccess: allRidesAccess)
        
    }
    
}
