//
//  ContrctEmployeeSource.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Michael Guatambu Davis on 4/20/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation


class ContractorProj1001Source: PersonSource {
    
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
        
        guard dateOfBirth != "" else {
            return nil
        }
        guard firstName != "" else {
            return nil
        }
        guard lastName != "" else {
            return nil
        }
        guard streetAddress != "" else {
            return nil
        }
        guard city != "" else {
            return nil
        }
        guard state != "" else {
            return nil
        }
        guard zipCode != "" else {
            return nil
        }
        guard socialSecurityNumber != "" else {
            return nil
        }
        
        self.init(
            entrantType: [.contractorProj1001],
            areaAccess: [.amusement, .rideControl],
            ridePrivileges: [.none],
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
            company: nil,
            projectNumber: "1001",
            dateOfVisit: dateOfVisit
        )
        
    }
}
