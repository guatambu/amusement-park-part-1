//: Playground - noun: a place where people can play

import UIKit
import Foundation



protocol EntrantTypeable {
    
    var amusementAreaAccess: Bool { get }
    var allRidesAccess: Bool { get }
    
}


struct HourlyRideServicesSource: EntrantTypeable {
    
    var amusementAreaAccess: Bool
    var allRidesAccess: Bool
    var rideControlAreaAccess: Bool
    var foodDiscount: Double
    var merchDiscount: Double
    var birthday: String
    var firstName: String
    var lastName: String
    var streetAddress: String
    var city: String
    var state: String
    var zipCode: Int
    var socialSecurityNumber: String
    
}


struct HourlyFoodServicesSource: EntrantTypeable {
    
    var amusementAreaAccess: Bool
    var allRidesAccess: Bool
    var kitchenAreaAccess: Bool
    var foodDiscount: Double
    var merchDiscount: Double
    var birthday: String
    var firstName: String
    var lastName: String
    var streetAddress: String
    var city: String
    var state: String
    var zipCode: Int
    var socialSecurityNumber: String
    
}


struct HourlyMaintenanceSource: EntrantTypeable {
    
    var amusementAreaAccess: Bool
    var allRidesAccess: Bool
    var kitchenAreaAccess: Bool
    var maintenanceAreaAccess: Bool
    var rideControlAreaAccess: Bool
    var foodDiscount: Double
    var merchDiscount: Double
    var birthday: String
    var firstName: String
    var lastName: String
    var streetAddress: String
    var city: String
    var state: String
    var zipCode: Int
    var socialSecurityNumber: String
    
}


struct ManagerSource: EntrantTypeable {
    
    var amusementAreaAccess: Bool
    var allRidesAccess: Bool
    var kitchenAreaAccess: Bool
    var maintenanceAreaAccess: Bool
    var officeAreasAccess: Bool
    var rideControlAreaAccess: Bool
    var foodDiscount: Double
    var merchDiscount: Double
    var birthday: String
    var firstName: String
    var lastName: String
    var streetAddress: String
    var city: String
    var state: String
    var zipCode: Int
    var socialSecurityNumber: String
    var managementTier: String
    
}


struct ContractEmployeeSource: EntrantTypeable {
    
    var amusementAreaAccess: Bool
    var allRidesAccess: Bool
    var kitchenAreaAccess: Bool
    var rideAccessInstructions: String
    var birthday: String
    var firstName: String
    var lastName: String
    var streetAddress: String
    var city: String
    var state: String
    var zipCode: Int
    var socialSecurityNumber: String
    var projectNumber: String
    var dateOfVisit: String
    
    
}


struct VendorSource: EntrantTypeable {
    
    var amusementAreaAccess: Bool
    var allRidesAccess: Bool
    var kitchenAreaAccess: Bool
    var rideAccessInstructions: String
    var birthday: String
    var firstName: String
    var lastName: String
    var vendorCompany: String
    var dateOfVisit: String
    
}


enum Employees {
    
    case contractEmployee(
        amusementAreaAccess: Bool,
        allRidesAccess: Bool,
        kitchenAreaAccess: Bool,
        rideAccessInstructions: String,
        birthday: String,
        firstName: String,
        lastName: String,
        streetAddress: String,
        city: String,
        state: String,
        zipCode: Int,
        socialSecurityNumber: String,
        projectNumber: String,
        dateOfVisit: String
    )
    
    case hourlyFood(
        amusementAreaAccess: Bool,
        allRidesAccess: Bool,
        kitchenAreaAccess: Bool,
        foodDiscount: Double,
        merchDiscount: Double,
        birthday: String,
        firstName: String,
        lastName: String,
        streetAddress: String,
        city: String,
        state: String,
        zipCode: Int,
        socialSecurityNumber: String
    )
    
    case hourlyRide(
        amusementAreaAccess: Bool,
        allRidesAccess: Bool,
        rideControlAreaAccess: Bool,
        foodDiscount: Double,
        merchDiscount: Double,
        birthday: String,
        firstName: String,
        lastName: String,
        streetAddress: String,
        city: String,
        state: String,
        zipCode: Int,
        socialSecurityNumber: String
    )
    
    case hourlyMaintenance(
        amusementAreaAccess: Bool,
        allRidesAccess: Bool,
        kitchenAreaAccess: Bool,
        maintenanceAreaAccess: Bool,
        rideControlAreaAccess: Bool,
        foodDiscount: Double,
        merchDiscount: Double,
        birthday: String,
        firstName: String,
        lastName: String,
        streetAddress: String,
        city: String,
        state: String,
        zipCode: Int,
        socialSecurityNumber: String
    )
    
    case manager(
        amusementAreaAccess: Bool,
        allRidesAccess: Bool,
        kitchenAreaAccess: Bool,
        maintenanceAreaAccess: Bool,
        officeAreaAccess: Bool,
        rideControlAreaAccess: Bool,
        foodDiscount: Double,
        merchDiscount: Double,
        birthday: String,
        firstName: String,
        lastName: String,
        streetAddress: String,
        city: String,
        state: String,
        zipCode: Int,
        socialSecurityNumber: String,
        managementTier: String
    )
    
    case vendor(
        amusementAreaAccess: Bool,
        allRidesAccess: Bool,
        kitchenAreaAccess: Bool,
        seeEntrantRules: String,
        birthday: String,
        firstName: String,
        lastName: String,
        vendorCompany: String,
        dateOfVisit: String
    )
    
    
    func EmployeeGenerator() -> EntrantTypeable {
        
        switch self {
            
        case .hourlyFood(
            let amusementAreaAccess,
            let allRidesAccess,
            let kitchenAreaAccess,
            let foodDiscount,
            let merchDiscount,
            let birthday,
            let firstName,
            let lastName,
            let streetAddress,
            let city,
            let state,
            let zipCode,
            let socialSecurityNumber
            ):
            return HourlyFoodServicesSource(
                amusementAreaAccess: amusementAreaAccess,
                allRidesAccess: allRidesAccess,
                kitchenAreaAccess: kitchenAreaAccess,
                foodDiscount: foodDiscount,
                merchDiscount: merchDiscount,
                birthday: birthday,
                firstName: firstName,
                lastName: lastName,
                streetAddress: streetAddress,
                city: city,
                state: state,
                zipCode: zipCode,
                socialSecurityNumber: socialSecurityNumber
            )
            
        case .hourlyRide(
            let amusementAreaAccess,
            let allRidesAccess,
            let rideControlAreaAccess,
            let foodDiscount,
            let merchDiscount,
            let birthday,
            let firstName,
            let lastName,
            let streetAddress,
            let city,
            let state,
            let zipCode,
            let socialSecurityNumber
            ):
            return HourlyRideServicesSource(
                amusementAreaAccess: amusementAreaAccess,
                allRidesAccess: allRidesAccess,
                rideControlAreaAccess: rideControlAreaAccess,
                foodDiscount: foodDiscount,
                merchDiscount: merchDiscount,
                birthday: birthday,
                firstName: firstName,
                lastName: lastName,
                streetAddress: streetAddress,
                city: city,
                state: state,
                zipCode: zipCode,
                socialSecurityNumber: socialSecurityNumber
            )
            
        case .hourlyMaintenance(
            let amusementAreaAccess,
            let allRidesAccess,
            let kitchenAreaAccess,
            let maintenanceAreaAccess,
            let rideControlAreaAccess,
            let foodDiscount,
            let merchDiscount,
            let birthday,
            let firstName,
            let lastName,
            let streetAddress,
            let city,
            let state,
            let zipCode,
            let socialSecurityNumber
            ):
            return HourlyMaintenanceSource(
                amusementAreaAccess: amusementAreaAccess,
                allRidesAccess: allRidesAccess,
                kitchenAreaAccess: kitchenAreaAccess,
                maintenanceAreaAccess: maintenanceAreaAccess,
                rideControlAreaAccess: rideControlAreaAccess,
                foodDiscount: foodDiscount,
                merchDiscount: merchDiscount,
                birthday: birthday,
                firstName: firstName,
                lastName: lastName,
                streetAddress: streetAddress,
                city: city,
                state: state,
                zipCode: zipCode,
                socialSecurityNumber: socialSecurityNumber
            )
            
            
            // managers
            
        case .manager(
            let amusementAreaAccess,
            let allRidesAccess,
            let kitchenAreaAccess,
            let maintenanceAreaAccess,
            let officeAreaAccess,
            let rideControlAreaAccess,
            let foodDiscount,
            let merchDiscount,
            let birthday,
            let firstName,
            let lastName,
            let streetAddress,
            let city,
            let state,
            let zipCode,
            let socialSecurityNumber,
            let managementTier
            ):
            return ManagerSource(
                amusementAreaAccess: amusementAreaAccess,
                allRidesAccess: allRidesAccess,
                kitchenAreaAccess: kitchenAreaAccess,
                maintenanceAreaAccess: maintenanceAreaAccess,
                officeAreasAccess: officeAreaAccess,
                rideControlAreaAccess: rideControlAreaAccess,
                foodDiscount: foodDiscount,
                merchDiscount: merchDiscount,
                birthday: birthday,
                firstName: firstName,
                lastName: lastName,
                streetAddress: streetAddress,
                city: city,
                state: state,
                zipCode: zipCode,
                socialSecurityNumber: socialSecurityNumber,
                managementTier: managementTier
            )
            
            
            // contract employees and Vendors
            
        case .contractEmployee(
            let amusementAreaAccess,
            let allRidesAccess,
            let kitchenAreaAccess,
            let rideAccessInstructions,
            let birthday,
            let firstName,
            let lastName,
            let streetAddress,
            let city,
            let state,
            let zipCode,
            let socialSecurityNumber,
            let projectNumber,
            let dateOfVisit
            ):
            return ContractEmployeeSource(
                amusementAreaAccess: amusementAreaAccess,
                allRidesAccess: allRidesAccess,
                kitchenAreaAccess: kitchenAreaAccess,
                rideAccessInstructions: rideAccessInstructions,
                birthday: birthday,
                firstName: firstName,
                lastName: lastName,
                streetAddress: streetAddress,
                city: city,
                state: state,
                zipCode: zipCode,
                socialSecurityNumber: socialSecurityNumber,
                projectNumber: projectNumber,
                dateOfVisit: dateOfVisit
            )
            
            
        case .vendor(
            let amusementAreaAccess,
            let allRidesAccess,
            let kitchenAreaAccess,
            let rideAccessInstructions,
            let birthday,
            let firstName,
            let lastName,
            let vendorCompany,
            let dateOfVisit
            ):
            return VendorSource(
                amusementAreaAccess: amusementAreaAccess,
                allRidesAccess: allRidesAccess,
                kitchenAreaAccess: kitchenAreaAccess,
                rideAccessInstructions: rideAccessInstructions,
                birthday: birthday,
                firstName: firstName,
                lastName: lastName,
                vendorCompany: vendorCompany,
                dateOfVisit: dateOfVisit
            )
            
        }
    }
}


