//
//  GuestFreeChildSource.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Michael Guatambu Davis on 4/19/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation



class GuestChildSource: GuestClassicSource {
    
    var dateOfBirth: String
    
    init (
        areaAccess: [AreaAccess],
        ridePrivileges: [RidePrivilege],
        discountAccess: [DiscountAccess],
        discountAmount: [DiscountAmount],
        requiredInformation: [RequiredInformation],
        dateOfBirth: String?
        ) throws
    {
        guard let dateOfBirth = dateOfBirth else {
            throw ErrorSource.missingBirthdate(description: "Please enter your Date of Birth")
        }
        
        self.dateOfBirth = dateOfBirth
        try super.init(
            areaAccess: areaAccess,
            ridePrivileges: ridePrivileges,
            discountAccess: discountAccess,
            discountAmount: discountAmount,
            requiredInformation: requiredInformation
        )
        self.requiredInformation = [.personal]
        
    }
}
