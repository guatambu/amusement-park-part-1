//
//  ContrctEmployeeSource.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Michael Guatambu Davis on 4/20/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation

// Entrant Type: subclassA: tier 3
class ContractEmployeeSource: VendorSource {
    
    var streetAddress: String
    var city: String
    var state: String
    var zipCode: String
    var socialSecurityNumber: String
    var projectNumber: String
    
    init(
        amusementAreaAccess: Bool,
        allRidesAccess: Bool,
        firstName: String,
        lastName: String,
        streetAddress: String,
        city: String,
        state: String,
        zipCode: String,
        socialSecurityNumber: String,
        vendorCompany: String,
        projectNumber: String
        ) {
        super.init(
            amusementAreaAccess: amusementAreaAccess,
            allRidesAccess: allRidesAccess,
            firstName: firstName,
            lastName: lastName,
            vendorCompany: vendorCompany,
            dateOfBirth: dateOfBirth,
            dateOfVisit: dateOfVisit
        )
        self.dateOfVisit = "N/A"
        self.vendorCompany = "N/A"
    }
    
}





