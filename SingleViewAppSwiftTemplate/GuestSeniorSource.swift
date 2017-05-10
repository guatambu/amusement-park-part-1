//
//  SeniorGuestSource.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Michael Guatambu Davis on 4/20/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation



class GuestSeniorSource: GuestChildSource {
    
    var firstName: String
    var lastName: String
    
    init (
        areaAccess: [AreaAccess],
        ridePrivileges: [RidePrivilege],
        discountAccess: [DiscountAccess],
        discountAmount: [DiscountAmount],
        requiredInformation: [RequiredInformation],
        dateOfBirth: String?,
        firstName: String?,
        lastName: String?
        ) throws
    {
        guard let firstName = firstName else {
            throw ErrorSource.missingFirstName(description: "Please enter your First Name")
        }
        guard let lastName = lastName else {
            throw ErrorSource.missingLastName(description: "Please enter your Last Name")
        }
        
        self.firstName = firstName
        self.lastName = lastName
        
        //do {
        try super.init(areaAccess: areaAccess, ridePrivileges: ridePrivileges, discountAccess: discountAccess, discountAmount: discountAmount, requiredInformation: requiredInformation, dateOfBirth: dateOfBirth)
        self.ridePrivileges = [.all, .skip]
        self.discountAmount = [.ten, .ten]
       // } catch ErrorSource.missingFirstName(let description) {
        //    print(description)
       // } catch ErrorSource.missingLastName(let description) {
       //     print(description)
       // }
        
    }
}


