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
    var zipCode: String
    
    init(
        amusementAreaAccess: Bool,
        allRidesAccess: Bool,
        dateOfBirth: String,
        firstName: String,
        lastName: String,
        streetAddress: String,
        city: String,
        state: String,
        zipCode: String
        ) {
        self.streetAddress = streetAddress
        self.city = city
        self.state = state
        self.zipCode = zipCode
        super.init(
            amusementAreaAccess: amusementAreaAccess,
            allRidesAccess: allRidesAccess,
            dateOfBirth: dateOfBirth,
            firstName: firstName,
            lastName: lastName
        )
        self.merchDiscount = 0.20
        self.isSenior = false
        
    }
    
}
