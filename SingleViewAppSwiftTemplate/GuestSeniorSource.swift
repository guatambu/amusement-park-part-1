//
//  SeniorGuestSource.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Michael Guatambu Davis on 4/20/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation



class GuestSeniorSource: PersonSource {
    
    convenience init? (
        dateOfBirth: String?,
        firstName: String?,
        lastName: String?
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
        
        self.init(
            areaAccess: [.amusement],
            ridePrivileges: [.all, .skip],
            discountAccess: [.food, .merch],
            discountAmount: [.ten, .ten],
            requiredInformation: [.personal],
            managementTier: [.none],
            dateOfBirth: dateOfBirth,
            firstName: firstName,
            lastName: lastName,
            streetAddress: nil,
            city: nil,
            state: nil,
            zipCode: nil,
            socialSecurityNumber: nil,
            company: nil,
            projectNumber: nil,
            dateOfVisit: nil
        )
        
    }
}


