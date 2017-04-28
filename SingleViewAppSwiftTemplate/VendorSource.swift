//
//  VendorSource.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Michael Guatambu Davis on 4/20/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation

// Entrant Type: subclassA: tier 2
class VendorSource: GuestClassicSource {
    
    var birthday: String
    var kitchenAreaAccess: Bool = true
    var rideAccessInstructions: String = "See Entrant Access Rules"
    var firstName: String
    var lastName: String
    var vendorCompany: String
    var dateOfVisit: String
    
    init(
        amusementAreaAccess: Bool,
        allRidesAccess: Bool,
        birthday: String,
        firstName: String,
        lastName: String,
        vendorCompany: String,
        dateOfVisit: String
        ) {
        self.birthday = birthday
        self.firstName = firstName
        self.lastName = lastName
        self.vendorCompany = vendorCompany
        self.dateOfVisit = dateOfVisit
        super.init(
            amusementAreaAccess: amusementAreaAccess,
            allRidesAccess: allRidesAccess
        )
        self.allRidesAccess = false
    }
    
    
}
