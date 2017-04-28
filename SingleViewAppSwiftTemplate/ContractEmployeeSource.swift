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
        birthday: String,
        firstName: String,
        lastName: String,
        streetAddress: String,
        city: String,
        state: String,
        zipCode: String,
        socialSecurityNumber: String,
        vendorCompany: String,
        projectNumber: String,
        dateOfVisit: String
        ) {
        self.streetAddress = streetAddress
        self.city = city
        self.state = state
        self.zipCode = zipCode
        self.socialSecurityNumber = socialSecurityNumber
        self.projectNumber = projectNumber
        super.init(
            amusementAreaAccess: amusementAreaAccess,
            allRidesAccess: allRidesAccess,
            birthday: birthday,
            firstName: firstName,
            lastName: lastName,
            vendorCompany: vendorCompany,
            dateOfVisit: dateOfVisit
        )
        self.dateOfVisit = "N/A"
        self.vendorCompany = "N/A"
    }
    
}





