//
//  HourlyFoodServicesSource.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Michael Guatambu Davis on 4/19/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation

// Entrant Type: subclassB: tier 4
class HourlyFoodServicesSource: GuestSeniorSource {
    
    var kitchenAreaAccess = true
    var streetAddress: String
    var city: String
    var state: String
    var zipCode: Int
    var socialSecurityNumber: String
    
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
        socialSecurityNumber: String
        ) {
        self.streetAddress = streetAddress
        self.city = city
        self.state = state
        self.zipCode = zipCode
        self.socialSecurityNumber = socialSecurityNumber
        super.init(
            amusementAreaAccess: amusementAreaAccess,
            allRidesAccess: allRidesAccess,
            birthday: birthday,
            firstName: firstName,
            lastName: lastName,
            foodDiscount: foodDiscount,
            merchDiscount: merchDiscount
        )
        self.foodDiscount = 0.15
        self.merchDiscount = 0.25
        self.skipLines = false
        self.isSenior = false
    }
    
    
}
