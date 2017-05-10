//
//  SeasonPassGuestSource.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Michael Guatambu Davis on 4/20/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation



class GuestSeasonPassSource: GuestSeniorSource {
    
    var streetAddress: String
    var city: String
    var state: String
    var zipCode: Int
    
    init (
        areaAccess: [AreaAccess],
        ridePrivileges: [RidePrivilege],
        discountAccess: [DiscountAccess],
        discountAmount: [DiscountAmount],
        requiredInformation: [RequiredInformation],
        dateOfBirth: String?,
        firstName: String?,
        lastName: String?,
        streetAddress: String?,
        city: String?,
        state: String?,
        zipCode: Int?
        ) throws
    {
        guard let streetAddress = streetAddress else {
            throw ErrorSource.missingFirstName(description: "Please enter your Street Address")
        }
        guard let city = city else {
            throw ErrorSource.missingLastName(description: "Please enter your City")
        }
        guard let state = state else {
            throw ErrorSource.missingLastName(description: "Please enter your State")
        }
        guard let zipCode = zipCode else {
            throw ErrorSource.missingLastName(description: "Please enter your ZIP Code")
        }
        
        self.streetAddress = streetAddress
        self.city = city
        self.state = state
        self.zipCode = zipCode
        
        //do {
        try super.init(areaAccess: areaAccess, ridePrivileges: ridePrivileges, discountAccess: discountAccess, discountAmount: discountAmount, requiredInformation: requiredInformation, dateOfBirth: dateOfBirth, firstName: firstName, lastName: lastName)
        self.discountAmount = [.ten, .twenty]
            
         //   } catch ErrorSource.missingStreet(let description) {
         //       print(description)
         //   } catch ErrorSource.missingCity(let description) {
         //       print(description)
         //   } catch ErrorSource.MissingState(let description) {
         //       print(description)
         //   } catch ErrorSource.missingZip(let description) {
         //       print(description)
         //   }
        
        
    }
}
