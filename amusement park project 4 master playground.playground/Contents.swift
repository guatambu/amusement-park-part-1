//: Playground - noun: a place where people can play

import UIKit
import Foundation

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
    case classic = "Classic Guest"
    case child = "Free Child Guest"
    case seasonPass = "Season Pass Guest"
    case senior = "Senior Guest"
    case vip = "VIP Guest"
    case hourlyFood = "Hourly Employee - Food Services"
    case hourlyRide = "Hourly Employee - Ride Services"
    case hourlyMaintenance = "Hourly Employee - Maintenance"
    case manager = "Manager"
    case contractEmployee = "Contract Employee"
    case vendor = "Vendor"
}

enum ManagerType: String {
    case shift = "Shift"
    case general = "General"
    case senior = "Senior"
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


protocol EntrantTypeable {
    
    var areaAccess: [AreaAccess] { get set }
    var ridePrivileges: [RidePrivilege] { get set }
    var discountAccess: [DiscountAccess] { get set }
    var discountAmount: [DiscountAmount] { get set }
    var requiredInformation: [RequiredInformation] { get set }
    
}


class GuestClassic: EntrantTypeable {

    var areaAccess: [AreaAccess]
    var ridePrivileges: [RidePrivilege]
    var discountAccess: [DiscountAccess]
    var discountAmount: [DiscountAmount]
    var requiredInformation: [RequiredInformation]
    
    init (
        areaAccess: [AreaAccess],
        ridePrivileges: [RidePrivilege],
        discountAccess: [DiscountAccess],
        discountAmount: [DiscountAmount],
        requiredInformation: [RequiredInformation]
        )
    {
        self.areaAccess = areaAccess
        self.ridePrivileges = ridePrivileges
        self.discountAccess = discountAccess
        self.discountAmount = discountAmount
        self.requiredInformation = requiredInformation
    }

}


class GuestChild: GuestClassic {
    
    var dateOfBirth: String
    
    init (
        areaAccess: [AreaAccess],
        ridePrivileges: [RidePrivilege],
        discountAccess: [DiscountAccess],
        discountAmount: [DiscountAmount],
        requiredInformation: [RequiredInformation],
        dateOfBirth: String
        )
    {
        self.dateOfBirth = dateOfBirth
        super.init(
            areaAccess: areaAccess,
            ridePrivileges: ridePrivileges,
            discountAccess: discountAccess,
            discountAmount: discountAmount,
            requiredInformation: requiredInformation
        )
        
    }
}


class GuestVIP: GuestClassic {}


class GuestSenior: GuestChild {
    
    var firstName: String
    var lastName: String
    
    init (
        areaAccess: [AreaAccess],
        ridePrivileges: [RidePrivilege],
        discountAccess: [DiscountAccess],
        discountAmount: [DiscountAmount],
        requiredInformation: [RequiredInformation],
        dateOfBirth: String,
        firstName: String,
        lastName: String
        )
    {
        self.firstName = firstName
        self.lastName = lastName
        super.init(
            areaAccess: areaAccess,
            ridePrivileges: ridePrivileges,
            discountAccess: discountAccess,
            discountAmount: discountAmount,
            requiredInformation: requiredInformation,
            dateOfBirth: dateOfBirth
        )
        
    }
}


class GuestSeasonPass: GuestSenior {
    
    var streetAddress: String
    var city: String
    var state: String
    var zipCode: Int
    
    init (
        areaAccess: [AreaAccess],
        ridePrivileges: [RidePrivilege],
        discountAccess: [DiscountAccess],
        discountAmount: [DiscountAmount],
        requiredInformation: [RequiredInformation],
        dateOfBirth: String,
        firstName: String,
        lastName: String,
        streetAddress: String,
        city: String,
        state: String,
        zipCode: Int
        )
    {
        self.streetAddress = streetAddress
        self.city = city
        self.state = state
        self.zipCode = zipCode
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
}


class HourlyFoodEmployee: GuestSeasonPass {
    
    var socialSecurityNumber: String
    
    init (
        areaAccess: [AreaAccess],
        ridePrivileges: [RidePrivilege],
        discountAccess: [DiscountAccess],
        discountAmount: [DiscountAmount],
        requiredInformation: [RequiredInformation],
        dateOfBirth: String,
        firstName: String,
        lastName: String,
        streetAddress: String,
        city: String,
        state: String,
        zipCode: Int,
        socialSecurityNumber: String
        )
    {
        self.socialSecurityNumber = socialSecurityNumber
        super.init(
            areaAccess: areaAccess,
            ridePrivileges: ridePrivileges,
            discountAccess: discountAccess,
            discountAmount: discountAmount,
            requiredInformation: requiredInformation,
            dateOfBirth: dateOfBirth,
            firstName: firstName,
            lastName: lastName,
            streetAddress: streetAddress,
            city: city,
            state: state,
            zipCode: zipCode
        )
        
    }
}


class HourlyMaintenanceEmployee: HourlyFoodEmployee {}


class HourlyRideServicesEmployee: HourlyFoodEmployee {}


class ManagerEmployee: HourlyFoodEmployee {

    var managementTier: [ManagerType]
    
    init (
        areaAccess: [AreaAccess],
        ridePrivileges: [RidePrivilege],
        discountAccess: [DiscountAccess],
        discountAmount: [DiscountAmount],
        requiredInformation: [RequiredInformation],
        dateOfBirth: String,
        firstName: String,
        lastName: String,
        streetAddress: String,
        city: String,
        state: String,
        zipCode: Int,
        socialSecurityNumber: String,
        managementTier: [ManagerType]
        )
    {
        self.managementTier = managementTier
        super.init(
            areaAccess: areaAccess,
            ridePrivileges: ridePrivileges,
            discountAccess: discountAccess,
            discountAmount: discountAmount,
            requiredInformation: requiredInformation,
            dateOfBirth: dateOfBirth,
            firstName: firstName,
            lastName: lastName,
            streetAddress: streetAddress,
            city: city, state: state,
            zipCode: zipCode,
            socialSecurityNumber: socialSecurityNumber
        )
        
    }
}


class ContractEmployee: HourlyFoodEmployee {

    var projectNumber: Int
    
    init (
        areaAccess: [AreaAccess],
        ridePrivileges: [RidePrivilege],
        discountAccess: [DiscountAccess],
        discountAmount: [DiscountAmount],
        requiredInformation: [RequiredInformation],
        dateOfBirth: String,
        firstName: String,
        lastName: String,
        streetAddress: String,
        city: String,
        state: String,
        zipCode: Int,
        socialSecurityNumber: String,
        projectNumber: Int
        )
    {
        self.projectNumber = projectNumber
        super.init(
            areaAccess: areaAccess,
            ridePrivileges: ridePrivileges,
            discountAccess: discountAccess,
            discountAmount: discountAmount,
            requiredInformation: requiredInformation,
            dateOfBirth: dateOfBirth,
            firstName: firstName,
            lastName: lastName,
            streetAddress: streetAddress,
            city: city,
            state: state,
            zipCode: zipCode,
            socialSecurityNumber: socialSecurityNumber
        )

    }
}


class Vendor: GuestSenior {

    var vendorCompany: String
    var dateOfVisit: String
    
    init (
        areaAccess: [AreaAccess],
        ridePrivileges: [RidePrivilege],
        discountAccess: [DiscountAccess],
        discountAmount: [DiscountAmount],
        requiredInformation: [RequiredInformation],
        dateOfBirth: String,
        firstName: String,
        lastName: String,
        vendorCompany: String,
        dateOfVisit: String
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
}




