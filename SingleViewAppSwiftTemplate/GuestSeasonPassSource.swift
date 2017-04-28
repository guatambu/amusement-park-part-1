//
//  SeasonPassGuestSource.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Michael Guatambu Davis on 4/20/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation

// Entrant Type: subclassB: tier 4
class GuestSeasonPassSource: GuestSeniorSource {
    
    var streetAddress: String
    var city: String
    var state: String
    var zipCode: Int
    
    init(
        amusementAreaAccess: Bool,
        allRidesAccess: Bool,
        birthday: String,
        firstName: String,
        lastName: String,
        foodDiscount: Double,
        merchDiscount: Double,
        streetAddress: String,
        city: String,
        state: String,
        zipCode: Int
        ) {
        self.streetAddress = streetAddress
        self.city = city
        self.state = state
        self.zipCode = zipCode
        super.init(
            amusementAreaAccess: amusementAreaAccess,
            allRidesAccess: allRidesAccess,
            birthday: birthday,
            firstName: firstName,
            lastName: lastName,
            foodDiscount: foodDiscount,
            merchDiscount: merchDiscount
        )
        self.merchDiscount = 0.20
        self.isSenior = false
        
    }
    
}
