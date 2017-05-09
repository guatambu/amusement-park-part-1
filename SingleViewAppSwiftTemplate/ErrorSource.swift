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
    
    case missingFirstName(desription: String)// = "Please enter your First Name"
    case missingLastName(desription: String)// = "Please enter your Last Name"
    case missingVendorCompany(desription: String)// = "Please enter your Vendor Company"
    case missingStreet(desription: String)// = "Please enter your Street Address"
    case missingCity(desription: String)// = "Please enter your City"
    case MissingState(desription: String)// = "Please enter your State"
    case missingZip(desription: String)// = "Please enter your ZIP Code"
    case missingSsn(desription: String)// = "Please enter your Social Security Number"
    case missingBirthdate(desription: String)// = "Please enter your Date of Birth"
    case missingVisitDate(desription: String)// = "Please enter your Date of Visit"
    case missingManagementTier(desription: String)// = "Please enter your Management Tier"
    case missingProjectNumber(desription: String)// = "Please enter your Project Number"
    
    //MARK: maybe need to incorporate the reason for denial of access based on entrant type
    case kitchenDeniedAccess(desription: String)// = "Sorry, Access Denied to Kitchen Areas"
    case rideControlDeniedAccess(desription: String)// =  "Sorry, Access Denied to Ride Control Areas"
    case maintenanceDeniedAccess(desription: String)// = "Sorry, Access Denied to Maintenance Areas"
    case officeDeniedAccess(desription: String)// = "Sorry, Access Denied to Office Areas"
    
    case skipLineDenial(desription: String)// = "Sorry, only VIP Guests may skip lines"
    case passAlreadyUsedToSkipLine(desription: String)// = "Sorry, this VIP Guest Pass has already been used for this feature"
    
    case notEligibleForDiscount(desription: String)// = "Sorry, you are not eligible for a Discount"
    
    case overFiveYearsOfAge(desription: String)// = "Sorry, you are over the age of 5"
    
    case notYourBirthday(desription: String)// = "Sorry, today is not your Birthday"
}



