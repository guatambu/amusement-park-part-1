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
    case food = "Discount on Food"
    case merch = "Discount on Merchandise"
}

enum DiscountAmount: String {
    case ten = "10%"
    case fifteen = "15%"
    case twenty = "20%"
    case twentyfive = "25%"
}

enum EntrantType: String {
    case classic = "Classic Guest"
    case vip = "VIP Guest"
    case child = "Free Child Guest"
    case seasonPass = "Season Pass Guest"
    case senior = "Senior Guest"
    case contractEmployee = "Contract Employee"
    case hourlyFood = "Hourly Employee - Food Services"
    case hourlyRide = "Hourly Employee - Ride Services"
    case hourlyMaintenance = "Hourly Employee - Maintenance"
    case manager = "Manager"
    case venfor = "Vendor"
}

enum ManagerType: String {
    case shift = "Shift"
    case general = "General"
    case senior = "Senior"
}

enum RequiredInformationType: String {
    case personal = "Required Personal Information"
    case business = "Required Business Information"
}

enum RideAccess: String {
    case all = "Access All Rides"
    case skip = "Skip All Ride Lines"
    case deferToRules = "See Entrant Access Rules"
}






