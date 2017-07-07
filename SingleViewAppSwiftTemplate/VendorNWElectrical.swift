//
//  VendorNWElectrical.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Michael Guatambu Davis on 7/6/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation


class VendorNWElectricalSource: PersonSource {
    
    convenience init? (
        dateOfBirth: String?,
        firstName: String?,
        lastName: String?,
        company: String?,
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
        guard company == nil || company == "" else {
            return nil
        }
        
        self.init(
            entrantType: [.VendorNWElectrical],
            areaAccess: [.amusement, .kitchen, .rideControl, .maintenance, .office],
            ridePrivileges: [.none],
            discountAccess: [.none],
            discountAmount: [.none],
            requiredInformation: [.business],
            dateOfBirth: dateOfBirth,
            firstName: firstName,
            lastName: lastName,
            streetAddress: nil,
            city: nil,
            state: nil,
            zipCode: nil,
            socialSecurityNumber: nil,
            company: company,
            projectNumber: nil,
            dateOfVisit: dateOfVisit
        )
        
    }
}
