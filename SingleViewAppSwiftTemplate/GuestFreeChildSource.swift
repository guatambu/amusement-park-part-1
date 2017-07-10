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
        dateOfBirth: String?,
        dateOfVisit: Date
        )
    {
        guard dateOfBirth != "" else {
            return nil
        }
        
        self.init(
            entrantType: [.child],
            areaAccess: [.amusement],
            ridePrivileges: [.all],
            discountAccess: [.none],
            discountAmount: [.none],
            requiredInformation: [.personal],
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
            dateOfVisit: dateOfVisit
        )
        
    }
    
}


