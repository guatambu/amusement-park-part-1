//
//  GuestFreeChildSource.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Michael Guatambu Davis on 4/19/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation



class GuestChildSource: PersonSource {    
    
    convenience init? (
        dateOfBirth: String?
        )
    {
        guard dateOfBirth == nil || dateOfBirth == "" else {
            return nil
        }
        
        self.init(
            areaAccess: [.amusement],
            ridePrivileges: [.all],
            discountAccess: [.none],
            discountAmount: [.none],
            requiredInformation: [.personal],
            managementTier: [.none],
            dateOfBirth: dateOfBirth,
            firstName: nil,
            lastName: nil,
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


