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

 enum EntrantType: String {
    // guests
    case adult = "Adult Guest"
    case child = "Child Guest"
    case seasonPass = "Season Pass Guest"
    case senior = "Senior Guest"
    case vip = "VIP Guest"
    // hourly employees
    case employeeFood = "Employee: Food Services"
    case employeeRide = "Employee: Ride Services"
    case employeeMaintenance = "Employee: Maintenance"
    // managers
    case managerShift = "Shift Manager"
    case managerGeneral = "General Manager"
    case managerSenior = "Senior Manager"
    // contractors
    case contractorProj1001 = "Contractor: Proj #1001"
    case contractorProj1002 = "Contractor: Proj #1002"
    case contractorProj1003 = "Contractor: Proj #1003"
    case contractorProj2001 = "Contractor: Proj #2001"
    case contractorProj2002 = "Contractor: Proj #2002"
    // vendors
    case vendorAcme = "Vendor: Acme"
    case vendorOrkin = "Vendor: Orkin"
    case vendorFedEx = "Vendor: FedEx"
    case vendorNWElectrical = "Vendor: NW Electrical"
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
    case none = "none"
}


