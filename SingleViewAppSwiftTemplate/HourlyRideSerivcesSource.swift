//
//  HourlyRideSerivcesSource.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Michael Guatambu Davis on 4/19/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation

// Entrant Type: subclassB: tier 6
class HourlyRideServicesSource: HourlyMaintenanceSource {
    
    override init(
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
        socialSecurityNumber: String
        ) {
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
        self.kitchenAreaAccess = false
        self.maintenanceAreaAccess = false
        
    }
    
}
