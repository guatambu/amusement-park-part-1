//
//  SeniorGuestSource.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Michael Guatambu Davis on 4/20/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation

// Entrant Type: subclassB: tier 3
class GuestSeniorSource: GuestVIPSource {
    
    var isSenior: Bool = true
    var dateOfBirth: String
    var firstName: String
    var lastName: String
    
    init(
        amusementAreaAccess: Bool,
        allRidesAccess: Bool,
        dateOfBirth: String,
        firstName: String,
        lastName: String
        ) {
        self.dateOfBirth = dateOfBirth
        self.firstName = firstName
        self.lastName = lastName
        super.init(
            amusementAreaAccess: amusementAreaAccess,
            allRidesAccess: allRidesAccess,
            foodDiscount: foodDiscount,
            merchDiscount: merchDiscount
        )
        self.merchDiscount = 0.10
    }
    
    
}
