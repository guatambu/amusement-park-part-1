//
//  GuestVIPSource.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Michael Guatambu Davis on 4/19/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation


class GuestVIPSource: GuestClassicSource {
    
    override init (
        areaAccess: [AreaAccess],
        ridePrivileges: [RidePrivilege],
        discountAccess: [DiscountAccess],
        discountAmount: [DiscountAmount],
        requiredInformation: [RequiredInformation]
        )
    {
        super.init(
            areaAccess: areaAccess,
            ridePrivileges: ridePrivileges,
            discountAccess: discountAccess,
            discountAmount: discountAmount,
            requiredInformation: requiredInformation
        )
        self.areaAccess = [.amusement]
        self.ridePrivileges = [.all, .skip]
        self.discountAccess = [.food, .merch]
        self.discountAmount = [.ten, .twenty]
        self.requiredInformation = [.none]
    }
    
}
