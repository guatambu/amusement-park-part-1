//
//  HourlyFoodServicesSource.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Michael Guatambu Davis on 4/19/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation



class HourlyFoodEmployeeSource: GuestSeasonPassSource {
    
    var socialSecurityNumber: String
    
    init (
        areaAccess: [AreaAccess],
        ridePrivileges: [RidePrivilege],
        discountAccess: [DiscountAccess],
        discountAmount: [DiscountAmount],
        requiredInformation: [RequiredInformation],
        dateOfBirth: String?,
        firstName: String?,
        lastName: String?,
        streetAddress: String?,
        city: String?,
        state: String?,
        zipCode: Int?,
        socialSecurityNumber: String?
        ) throws
    {
        guard let socialSecurityNumber = socialSecurityNumber else {
            throw ErrorSource.missingFirstName(description: "Please enter your Social Security Number")
        }

        self.socialSecurityNumber = socialSecurityNumber
        try super.init(
            areaAccess: areaAccess,
            ridePrivileges: ridePrivileges,
            discountAccess: discountAccess,
            discountAmount: discountAmount,
            requiredInformation: requiredInformation,
            dateOfBirth: dateOfBirth,
            firstName: firstName,
            lastName: lastName,
            streetAddress: streetAddress,
            city: city,
            state: state,
            zipCode: zipCode
        )
        self.areaAccess = [.amusement, .kitchen]
        self.discountAmount = [.fifteen, .twentyfive]
        
    }
}
