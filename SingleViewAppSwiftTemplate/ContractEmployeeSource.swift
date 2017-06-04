//
//  ContrctEmployeeSource.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Michael Guatambu Davis on 4/20/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation



class ContractEmployeeSource: HourlyFoodEmployeeSource {
    
    var projectNumber: String?
    
    init(
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
        zipCode: String?,
        socialSecurityNumber: String?,
        projectNumber: String?
        )
    {
        
        
        self.projectNumber = projectNumber
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
       
        
    }
    
    convenience init? (
        dateOfBirth: String?,
        firstName: String?,
        lastName: String?,
        streetAddress: String?,
        city: String?,
        state: String?,
        zipCode: String?,
        socialSecurityNumber: String?,
        projectNumber: String?
        )
    {
        
        guard dateOfBirth == nil || dateOfBirth == "" else {
            return nil
        }
        guard firstName == nil || firstName == "" else {
            return nil
        }
        guard lastName == nil || lastName == "" else {
            return nil
        }
        guard streetAddress == nil || streetAddress == "" else {
            return nil
        }
        guard city == nil || city == "" else {
            return nil
        }
        guard state == nil || state == "" else {
            return nil
        }
        guard zipCode == nil || zipCode == "" else {
            return nil
        }
        guard socialSecurityNumber == nil || socialSecurityNumber == "" else {
            return nil
        }
        guard projectNumber == nil || projectNumber == "" else {
            return nil
        }
        
        self.init(
            areaAccess: [.amusement],
            ridePrivileges: [.deferToRules],
            discountAccess: [.none],
            discountAmount: [.none],
            requiredInformation: [.personal],
            dateOfBirth: dateOfBirth,
            firstName: firstName,
            lastName: lastName,
            streetAddress: streetAddress,
            city: city,
            state: state,
            zipCode: zipCode,
            socialSecurityNumber: socialSecurityNumber,
            projectNumber: projectNumber
        )
        
    }
}


