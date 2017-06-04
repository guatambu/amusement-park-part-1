//
//  GuestFreeChildSource.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Michael Guatambu Davis on 4/19/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation



class GuestChildSource: GuestClassicSource {
    
    var dateOfBirth: String?
    
    init (
        areaAccess: [AreaAccess],
        ridePrivileges: [RidePrivilege],
        discountAccess: [DiscountAccess],
        discountAmount: [DiscountAmount],
        requiredInformation: [RequiredInformation],
        dateOfBirth: String?
        )
    {
        self.dateOfBirth = dateOfBirth
        super.init(
            areaAccess: areaAccess,
            ridePrivileges: ridePrivileges,
            discountAccess: discountAccess,
            discountAmount: discountAmount,
            requiredInformation: requiredInformation
        )
        
    }
    
    convenience init? (
        discountAccess: [DiscountAccess],
        discountAmount: [DiscountAmount],
        dateOfBirth: String?
        )
    {
        
        guard dateOfBirth == nil || dateOfBirth == "" else {
            return nil
        }
        
        self.init(
            areaAccess: [.amusement],
            ridePrivileges: [.all],
            discountAccess: discountAccess,
            discountAmount: discountAmount,
            requiredInformation: [.personal],
            dateOfBirth: dateOfBirth
        )
        
    }
}

