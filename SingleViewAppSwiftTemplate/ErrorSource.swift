//
//  ErrorSource.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Michael Guatambu Davis on 4/20/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation
import UIKit

enum ErrorSource: String {
    
    case missingFirstName = "Please enter your First Name"
    case missingLastName = "Please enter your Last Name"
    case missingVendorCompany = "Please enter your Vendor Company"
    case missingStreet = "Please enter your Street Address"
    case missingCity = "Please enter your City"
    case MissingState = "Please enter your State"
    case missingZip = "Please enter your ZIP Code"
    case missingSsn = "Please enter your Social Security Number"
    case missingBirthdate = "Please enter your Date of Birth"
    case missingVisitDate = "Please enter your Date of Visit"
    case missingManagementTier = "Please enter your Management Tier"
    case missingProjectNumber = "Please enter your Project Number"
    
    //MARK: maybe need to incorporate the reason for denial of access based on entrant type
    case kitchenDeniedAccess = "Sorry, Access Denied to Kitchen Areas"
    case rideControlDeniedAccess =  "Sorry, Access Denied to Ride Control Areas"
    case maintenanceDeniedAccess = "Sorry, Access Denied to Maintenance Areas"
    case officeDeniedAccess = "Sorry, Access Denied to Office Areas"
    
    case skipLineDenial = "Sorry, only VIP Guests may skip lines"
    case passAlreadyUsedToSkipLine = "Sorry, this VIP Guest Pass has already been used for this feature"
    
    case notEligibleForDiscount = "Sorry, you are not eligible for a Discount"
    
    case overFiveYearsOfAge = "Sorry, you are over the age of 5"
    
    case notYourBirthday = "Sorry, today is not your Birthday"
}



