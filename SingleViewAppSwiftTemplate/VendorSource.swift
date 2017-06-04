//
//  VendorSource.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Michael Guatambu Davis on 4/20/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation


class VendorSource: GuestSeniorSource {
    
    var vendorCompany: String?
    var dateOfVisit: String?
    
    init (
        areaAccess: [AreaAccess],
        ridePrivileges: [RidePrivilege],
        discountAccess: [DiscountAccess],
        discountAmount: [DiscountAmount],
        requiredInformation: [RequiredInformation],
        dateOfBirth: String?,
        firstName: String?,
        lastName: String?,
        vendorCompany: String?,
        dateOfVisit: String?
        )
    {
        self.vendorCompany = vendorCompany
        self.dateOfVisit = dateOfVisit
        super.init(
            areaAccess: areaAccess,
            ridePrivileges: ridePrivileges,
            discountAccess: discountAccess,
            discountAmount: discountAmount,
            requiredInformation: requiredInformation,
            dateOfBirth: dateOfBirth,
            firstName: firstName,
            lastName: lastName
        )
        
        //self.ridePrivileges = [.deferToRules]
        //self.discountAccess = [.none]
        //self.discountAmount = [.none]
        
    }
    
    convenience init (
        dateOfBirth: String?,
        firstName: String?,
        lastName: String?,
        vendorCompany: String?,
        dateOfVisit: String?
        
        )
    {
        self.init(
            areaAccess: [.amusement],
            ridePrivileges: [.deferToRules],
            discountAccess: [.none],
            discountAmount: [.none],
            requiredInformation: [.personal],
            dateOfBirth: dateOfBirth,
            firstName: firstName,
            lastName: lastName,
            vendorCompany: vendorCompany,
            dateOfVisit: dateOfVisit
        )
        
    }
}
