//
//  ManagerSource.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Michael Guatambu Davis on 4/14/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation


class ManagerEmployeeSource: HourlyFoodEmployeeSource {
    
    var managementTier: [ManagerType]
    
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
        socialSecurityNumber: String?,
        managementTier: [ManagerType]
        )
    {
        self.managementTier = managementTier
        super.init(
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
            zipCode: zipCode,
            socialSecurityNumber: socialSecurityNumber
        )
        //self.areaAccess = [.amusement, .kitchen, .maintenance, .office, .rideControl]
        //self.discountAmount = [.twentyfive, .twentyfive]
        
    }
    
    convenience init (
        dateOfBirth: String?,
        firstName: String?,
        lastName: String?,
        streetAddress: String?,
        city: String?,
        state: String?,
        zipCode: Int?,
        socialSecurityNumber: String?,
        managementTier: [ManagerType]
        )
    {
        self.init(
            areaAccess: [.amusement, .kitchen, .maintenance, .office, .rideControl],
            ridePrivileges: [.all, .skip],
            discountAccess: [.food, .merch],
            discountAmount: [.twentyfive, .twentyfive],
            requiredInformation: [.personal],
            dateOfBirth: dateOfBirth,
            firstName: firstName,
            lastName: lastName,
            streetAddress: streetAddress,
            city: city,
            state: state,
            zipCode: zipCode,
            socialSecurityNumber: socialSecurityNumber,
            managementTier: managementTier
        )
        
    }
}
