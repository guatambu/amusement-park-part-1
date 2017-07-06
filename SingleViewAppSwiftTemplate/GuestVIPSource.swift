//
//  GuestVIPSource.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Michael Guatambu Davis on 4/19/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation


class GuestVIPSource: PersonSource {
    
    convenience init? (
        dateOfVisit: Date
        )
    {
        self.init(
            entrantType: [.vip],
            areaAccess: [.amusement],
            ridePrivileges: [.all, .skip],
            discountAccess: [.food, .merch],
            discountAmount: [.ten, .twenty],
            requiredInformation: [.personal],
            dateOfBirth: nil,
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






