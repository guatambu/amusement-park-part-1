//
//  PersonSource.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Kelly Johnson on 5/7/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation


// protocol

protocol EntrantTypeable {
    
    var areaAccess: [AreaAccess] { get set }
    var ridePrivileges: [RidePrivilege] { get set }
    var discountAccess: [DiscountAccess] { get set }
    var discountAmount: [DiscountAmount] { get set }
    var requiredInformation: [RequiredInformation] { get set }
    var managementTier: [ManagerType] { get set }
    var dateOfBirth: String? { get set }
    var firstName: String? { get set }
    var lastName: String? { get set }
    var streetAddress: String? { get set }
    var city: String? { get set }
    var state: String? { get set }
    var zipCode: String? { get set }
    var socialSecurityNumber: String? { get set }
    var company: String? { get set }
    var projectNumber: String? { get set }
    var dateOfVisit: String? { get set }
    
    
}

// base class

class PersonSource: EntrantTypeable {
    
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
    var dateOfVisit: String?
    
    
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
        dateOfVisit: String?
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



 
 
