//
//  VendorFedExSource.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Michael Guatambu Davis on 7/6/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation


class VendorFedExSource: PersonSource {
    
    convenience init? (
        dateOfBirth: String?,
        firstName: String?,
        lastName: String?,
        company: String?,
        dateOfVisit: Date
        )
    {
        
        guard dateOfBirth != "" else {
            return nil
        }
        guard firstName != "" else {
            return nil
        }
        guard lastName != "" else {
            return nil
        }
        guard company != "" else {
            return nil
        }
        
        self.init(
            entrantType: [.vendorFedEx],
            areaAccess: [.maintenance, .office],
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
