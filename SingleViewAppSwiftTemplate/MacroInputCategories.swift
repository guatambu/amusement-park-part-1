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
    case amusement = "Amusement Areas"
    case kitchen = "Kitchen Areas"
    case rideControl =  "Ride Control Areas"
    case maintenance = "Maintenance Areas"
    case office = "Office Areas"
    
}

enum CollectedData: String {
    case firstName = "First Name"
    case lastName = "Last Name"
    case vendorCompany = "Vendor Company"
    case street = "Street Address"
    case city = "City"
    case state = "State"
    case zip = "ZIP Code"
    case ssn = "Social Security Number"
    case birthdate = "Date of Birth"
    case visitDate = "Date of Visit"
    case managementTier = "Management Tier"
    case projectNumber = "Project Number"
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

/*
 enum EntrantTypeNav: String {
    case guest = "Guest"
    case employee = "Employee"
    case manager = "Manager"
    case contractor = "Contractor"
    case vendor = "Vendor"
}
*/

enum EntrantTypeSubNav: String {
    case adult = "Adult"
    case child = "Child"
    case seasonPass = "Season Pass"
    case senior = "Senior"
    case vip = "VIP"
    case hourlyFood = "Food Services"
    case hourlyRide = "Ride Services"
    case hourlyMaintenance = "Maintenance"
    case manager = "Manager"
    case contractEmployee = "Contract Employee"
    case vendor = "Vendor"
}

enum ManagerType: String {
    case shift = "Shift"
    case general = "General"
    case senior = "Senior"
}

enum ContractorSubNav: String {
    case proj1001 = "Proj #1001"
    case proj1002 = "Proj #1002"
    case proj1003 = "Proj #1003"
    case proj2001 = "Proj #2001"
    case proj2002 = "Proj #2002"
}

enum Vendors: String {
    case acme = "Acme"
    case orkin = "Orkin"
    case fedex = "FedEx"
    case nwElectrical = "NW Electrical"
}

enum RequiredInformation: String {
    case none = "none"
    case personal = "Personal Information"
    case business = "Business Information"
}

enum RidePrivilege: String {
    case all = "Access All Rides"
    case skip = "Skip All Ride Lines"
    case deferToRules = "See Entrant Access Rules"
}


