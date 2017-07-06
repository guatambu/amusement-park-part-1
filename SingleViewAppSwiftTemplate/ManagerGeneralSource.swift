//
//  ManagerGeneralSource.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Kelly Johnson on 7/6/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation


class ManagerGeneralSource: PersonSource {
    
    convenience init? (
        dateOfBirth: String?,
        firstName: String?,
        lastName: String?,
        streetAddress: String?,
        city: String?,
        state: String?,
        zipCode: String?,
        socialSecurityNumber: String?,
        dateOfVisit: Date
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
        
        self.init(
            entrantType: [.managerGeneral],
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
            socialSecurityNumber: socialSecurityNumber,
            company: nil,
            projectNumber: nil,
            dateOfVisit: dateOfVisit
        )
        
    }
}
