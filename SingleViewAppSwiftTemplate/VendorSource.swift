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

        
    }
    
    convenience init? (
        dateOfBirth: String?,
        firstName: String?,
        lastName: String?,
        vendorCompany: String?,
        dateOfVisit: String?
        
        )
    {
        
        guard dateOfBirth == nil || dateOfBirth == "" else {
            return nil
        }
        guard firstName == nil || firstName == "" else {
            return nil
        }
        guard lastName == nil || lastName == "" else {
            return nil
        }
        guard vendorCompany == nil || vendorCompany == "" else {
            return nil
        }
        guard dateOfVisit == nil || dateOfVisit == "" else {
            return nil
        }
        
        self.init(
            areaAccess: [.amusement],
            ridePrivileges: [.deferToRules],
            discountAccess: [.none],
            discountAmount: [.none],
            requiredInformation: [.business],
            dateOfBirth: dateOfBirth,
            firstName: firstName,
            lastName: lastName,
            vendorCompany: vendorCompany,
            dateOfVisit: dateOfVisit
        )
        
    }
}







