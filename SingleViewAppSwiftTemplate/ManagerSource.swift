//
//  ManagerSource.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Michael Guatambu Davis on 4/14/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation

// Entrant Type: subclassB: tier6
class ManagerSource: HourlyMaintenanceSource {
    
    var isManager: Bool = true
    var officeAreasAccess: Bool = true
    var managementTier: String
    
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
        zipCode: Int,
        socialSecurityNumber: String,
        managementTier: String
        ) {
        self.managementTier = managementTier
        super.init(
            amusementAreaAccess: amusementAreaAccess,
            allRidesAccess: allRidesAccess,
            birthday: birthday,
            firstName: firstName,
            lastName: lastName,
            foodDiscount: foodDiscount,
            merchDiscount: merchDiscount,
            streetAddress: streetAddress,
            city: city,
            state: state,
            zipCode: zipCode,
            socialSecurityNumber: socialSecurityNumber
        )
        self.foodDiscount = 0.25
    }
    
    
}
