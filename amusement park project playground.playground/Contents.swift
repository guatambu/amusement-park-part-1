//: Playground - noun: a place where people can play

import UIKit
import Foundation


protocol EntrantTypeable {
    
    var amusementAreaAccess: Bool { get }
    var allRidesAccess: Bool { get }
    
}

struct HourlyRideSerivcesSource: EntrantTypeable {
    
    let isRideControlEmployee: Bool
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
    
    /*
     init(
     isRideControlEmployee: Bool = true,
     amusementAreaAccess: Bool = true,
     allRidesAccess: Bool = true,
     rideControlAreaAccess: Bool = true,
     foodDiscount: Double = 0.15,
     merchDiscount: Double = 0.15,
     birthday: String,
     firstName: String,
     lastName: String,
     streetAddress: String,
     city: String,
     state: String,
     zipCode: Int,
     socialSecurityNumber: String
     ) {
     self.isRideControlEmployee = isRideControlEmployee
     self.amusementAreaAccess = amusementAreaAccess
     self.allRidesAccess = allRidesAccess
     self.rideControlAreaAccess = rideControlAreaAccess
     self.foodDiscount = foodDiscount
     self.merchDiscount = merchDiscount
     self.birthday = birthday
     self.firstName = firstName
     self.lastName = lastName
     self.streetAddress = streetAddress
     self.city = city
     self.state = state
     self.zipCode = zipCode
     self.socialSecurityNumber = socialSecurityNumber
     }
     */
    
}


struct HourlyFoodServicesSource: EntrantTypeable {
    
    let isFoodEmployee: Bool
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
    
    let isMaintenanceEmployee: Bool
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
    
    let isManager: Bool
    var amusementAreaAccess: Bool
    var allRidesAccess: Bool
    var kitchenAreaAccess: Bool
    var maintenanceAreaAccess: Bool
    var officeAreaAccess: Bool
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
    
    let isContractEmployee: Bool
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
    
    let isVendor: Bool
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


enum Employee {
    
    case contractEmployee(
        isContractEmployee: Bool,
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
        isFoodEmployee: Bool,
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
        isRideControlEmployee: Bool,
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
        isMaintenanceEmployee: Bool,
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
        isManager: Bool,
        amusementAreaAccess: Bool,
        allRidesAccess: Bool,
        kitchenAreaAccess: Bool,
        maintenanceAreaAccess: Bool,
        officeAreasAccess: Bool,
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
        isVendor: Bool,
        amusementAreaAccess: Bool,
        allRidesAccess: Bool,
        kitchenAreaAccess: Bool,
        rideAccessInstructions: String,
        birthday: String,
        firstName: String,
        lastName: String,
        vendorCompany: String,
        dateOfVisit: String
    )
    
    
    func EmployeeGenerator() -> EntrantTypeable {
        
        switch self {
            
        case .hourlyFood(
            let isFoodEmployee,
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
                isFoodEmployee: isFoodEmployee,
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
            let isRideControlEmployee,
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
            return HourlyRideSerivcesSource (
                isRideControlEmployee: isRideControlEmployee,
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
            
        case .hourlyMaintenance (
            let isMaintenanceEmployee,
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
            return HourlyMaintenanceSource (
                isMaintenanceEmployee: isMaintenanceEmployee,
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
            let isManager,
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
            return ManagerSource (
                isManager: isManager,
                amusementAreaAccess: amusementAreaAccess,
                allRidesAccess: allRidesAccess,
                kitchenAreaAccess: kitchenAreaAccess,
                maintenanceAreaAccess: maintenanceAreaAccess,
                officeAreaAccess: officeAreaAccess,
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
            let isContractEmployee,
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
            return ContractEmployeeSource (
                isContractEmployee: isContractEmployee,
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
            let isVendor,
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
            return VendorSource (
                isVendor: isVendor,
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

var newVendor = Employee.vendor(isVendor: true, amusementAreaAccess: true, allRidesAccess: false, kitchenAreaAccess: true, rideAccessInstructions: "See Entrant Rules", birthday: "01/01/2001", firstName: "Mike", lastName: "Smith", vendorCompany: "my Company", dateOfVisit: "01/01/2015")



