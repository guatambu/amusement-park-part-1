//
//  ErrorSource.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Michael Guatambu Davis on 4/20/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

// question here...

import Foundation
import UIKit

enum ErrorSource: Error {
    
    case missingFirstName(description: String)// = "Please enter your First Name"
    case missingLastName(description: String)// = "Please enter your Last Name"
    case missingVendorCompany(description: String)// = "Please enter your Vendor Company"
    case missingStreet(description: String)// = "Please enter your Street Address"
    case missingCity(description: String)// = "Please enter your City"
    case MissingState(description: String)// = "Please enter your State"
    case missingZip(description: String)// = "Please enter your ZIP Code"
    case missingSsn(description: String)// = "Please enter your Social Security Number"
    case missingBirthdate(description: String)// = "Please enter your Date of Birth"
    case missingVisitDate(description: String)// = "Please enter your Date of Visit"
    case missingManagementTier(description: String)// = "Please enter your Management Tier"
    case missingProjectNumber(description: String)// = "Please enter your Project Number"
    
    //MARK: maybe need to incorporate the reason for denial of access based on entrant type
    case kitchenDeniedAccess(description: String)// = "Sorry, Access Denied to Kitchen Areas"
    case rideControlDeniedAccess(description: String)// =  "Sorry, Access Denied to Ride Control Areas"
    case maintenanceDeniedAccess(description: String)// = "Sorry, Access Denied to Maintenance Areas"
    case officeDeniedAccess(description: String)// = "Sorry, Access Denied to Office Areas"
    
    case skipLineDenial(description: String)// = "Sorry, only VIP Guests may skip lines"
    case passAlreadyUsedToSkipLine(description: String)// = "Sorry, this VIP Guest Pass has already been used for this feature"
    
    case notEligibleForDiscount(description: String)// = "Sorry, you are not eligible for a Discount"
    
    case overFiveYearsOfAge(description: String)// = "Sorry, you are over the age of 5"
    
    case notYourBirthday(description: String)// = "Sorry, today is not your Birthday"
}



