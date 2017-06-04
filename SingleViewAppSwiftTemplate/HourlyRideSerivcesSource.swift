//
//  HourlyRideSerivcesSource.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Michael Guatambu Davis on 4/19/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation



class HourlyRideServicesEmployeeSource: HourlyFoodEmployeeSource {
    
    convenience init (
        dateOfBirth: String?,
        firstName: String?,
        lastName: String?,
        streetAddress: String?,
        city: String?,
        state: String?,
        zipCode: Int?,
        socialSecurityNumber: String?
        )
    {
        self.init(
            areaAccess: [.amusement, .rideControl],
            ridePrivileges: [.all, .skip],
            discountAccess: [.food, .merch],
            discountAmount: [.fifteen, .twentyfive],
            requiredInformation: [.personal],
            dateOfBirth: dateOfBirth,
            firstName: firstName,
            lastName: lastName,
            streetAddress: streetAddress,
            city: city,
            state: state,
            zipCode: zipCode,
            socialSecurityNumber: socialSecurityNumber
        )
        
    }
}
