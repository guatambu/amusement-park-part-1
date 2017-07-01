//
//  ManagerSource.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Michael Guatambu Davis on 4/14/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation


class ManagerEmployeeSource: EntrantTypeable {
    
    var areaAccess: [AreaAccess]
    var ridePrivileges: [RidePrivilege]
    var discountAccess: [DiscountAccess]
    var discountAmount: [DiscountAmount]
    var requiredInformation: [RequiredInformation]
    var managementTier: [ManagerType]
    var dateOfBirth: String?
    var firstName: String?
    var lastName: String?
    var streetAddress: String?
    var city: String?
    var state: String?
    var zipCode: String?
    var socialSecurityNumber: String?
    var company: String?
    var projectNumber: String?
    var dateOfVisit: Date
    
    
    init?(
        areaAccess: [AreaAccess],
        ridePrivileges: [RidePrivilege],
        discountAccess: [DiscountAccess],
        discountAmount: [DiscountAmount],
        requiredInformation: [RequiredInformation],
        managementTier: [ManagerType],
        dateOfBirth: String?,
        firstName: String?,
        lastName: String?,
        streetAddress: String?,
        city: String?,
        state: String?,
        zipCode: String?,
        socialSecurityNumber: String?,
        company: String?,
        projectNumber: String?,
        dateOfVisit: Date
        )
    {
        self.areaAccess = areaAccess
        self.ridePrivileges = ridePrivileges
        self.discountAccess = discountAccess
        self.discountAmount = discountAmount
        self.requiredInformation = requiredInformation
        self.managementTier = managementTier
        self.dateOfBirth = dateOfBirth
        self.firstName = firstName
        self.lastName = lastName
        self.streetAddress = streetAddress
        self.city = city
        self.state = state
        self.zipCode = zipCode
        self.socialSecurityNumber = socialSecurityNumber
        self.company = company
        self.projectNumber = projectNumber
        self.dateOfVisit = dateOfVisit
    }
}

