//
//  PermissionsDetail.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Michael Guatambu Davis on 4/14/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation

// getting the ball rolling


enum AreaAccess: String {
    case amusement = "Amusement"
    case kitchen = "Kitchen"
    case rideControl =  "Ride Control"
    case maintenance = "Maintenance"
    case office = "Office"
    
}

enum CollectedData: String {
    case birthdate = "Date of Birth"
    case ssn = "Social Security Number"
    case firstName = "First Name"
    case lastName = "Last Name"
    case street = "Street Address"
    case city = "City"
    case state = "State"
    case zip = "ZIP Code"
}

enum DiscountAccess: String {
    case none = "none"
    case food = "Discount on Food"
    case merch = "Discount on Merchandise"
}

enum DiscountAmount: String {
    case none = "none"
    case ten = "10%"
    case fifteen = "15%"
    case twenty = "20%"
    case twentyfive = "25%"
}

 enum EntrantType: String {
    // guests
    case adult = "Adult"
    case child = "Free Child"
    case seasonPass = "Season Pass"
    case senior = "Senior"
    case vip = "VIP"
    // hourly employees
    case employeeFood = "Food Services"
    case employeeRide = "Ride Services"
    case employeeMaintenance = "Maintenance"
    // managers
    case managerShift = "Shift Manager"
    case managerGeneral = "General Manager"
    case managerSenior = "Senior Manager"
    // contractors
    case contractorProj1001 = "Proj #1001"
    case contractorProj1002 = "Proj #1002"
    case contractorProj1003 = "Proj #1003"
    case contractorProj2001 = "Proj #2001"
    case contractorProj2002 = "Proj #2002"
    // vendors
    case vendorAcme = "Acme"
    case vendorOrkin = "Orkin"
    case vendorFedEx = "FedEx"
    case vendorNWElectrical = "NW Electrical"
}

enum RequiredInformation: String {
    case none = "none"
    case personal = "Personal"
    case business = "Business"
}

enum RidePrivilege: String {
    case all = "All Rides"
    case skip = "Skip Ride Lines"
    case deferToRules = "See Entrant Access Rules"
    case none = "none"
}


