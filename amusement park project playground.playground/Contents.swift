//: Playground - noun: a place where people can play

import UIKit
import Foundation


protocol EntrantTypeable {
    
    var amusementAreaAccess: Bool { get }
    var allRidesAccess: Bool { get }
    
}



// Entrant Type: base class: tier 1

class GuestClassicSource: EntrantTypeable {
    
    var amusementAreaAccess: Bool = true
    var allRidesAccess: Bool = true
    
    init(amusementAreaAccess: Bool, allRidesAccess: Bool) {
        self.amusementAreaAccess = amusementAreaAccess
        self.allRidesAccess = allRidesAccess
        
    }
    
    
}


class GuestFreeChildSource: GuestClassicSource {
    
    var isChild: Bool = true
    var birthday: String
    
    init(amusementAreaAccess: Bool, allRidesAccess: Bool, birthday: String) {
        self.birthday = birthday
        super.init(
            amusementAreaAccess: amusementAreaAccess,
            allRidesAccess: allRidesAccess
        )
    }
    
}


class GuestVIPSource: GuestClassicSource {
    
    var skipLines: Bool = true
    var foodDiscount: Double
    var merchDiscount: Double
    
    init(
        amusementAreaAccess: Bool,
        allRidesAccess: Bool,
        foodDiscount: Double,
        merchDiscount: Double
        ) {
        self.foodDiscount = foodDiscount
        self.merchDiscount = merchDiscount
        super.init(amusementAreaAccess: amusementAreaAccess, allRidesAccess: allRidesAccess)
        
    }
    
}


class GuestSeniorSource: GuestVIPSource {
    
    var isSenior: Bool = true
    var birthday: String
    var firstName: String
    var lastName: String
    
    init(
        amusementAreaAccess: Bool,
        allRidesAccess: Bool,
        birthday: String,
        firstName: String,
        lastName: String,
        foodDiscount: Double,
        merchDiscount: Double
        ) {
        self.birthday = birthday
        self.firstName = firstName
        self.lastName = lastName
        super.init(
            amusementAreaAccess: amusementAreaAccess,
            allRidesAccess: allRidesAccess,
            foodDiscount: foodDiscount,
            merchDiscount: merchDiscount
        )
        self.merchDiscount = 0.10
    }
    
    
}


class GuestSeasonPassSource: GuestSeniorSource {
    
    var streetAddress: String
    var city: String
    var state: String
    var zipCode: Int
    
    init(
        amusementAreaAccess: Bool,
        allRidesAccess: Bool,
        birthday: String,
        firstName: String,
        lastName: String,
        foodDiscount: Double,
        merchDiscount: Double,
        streetAddress: String,
        city: String,
        state: String,
        zipCode: Int
        ) {
        self.streetAddress = streetAddress
        self.city = city
        self.state = state
        self.zipCode = zipCode
        super.init(
            amusementAreaAccess: amusementAreaAccess,
            allRidesAccess: allRidesAccess,
            birthday: birthday,
            firstName: firstName,
            lastName: lastName,
            foodDiscount: foodDiscount,
            merchDiscount: merchDiscount
        )
        self.merchDiscount = 0.20
        self.isSenior = false
        
    }
    
}



class HourlyFoodServicesSource: GuestSeniorSource {
    
    var kitchenAreaAccess = true
    var streetAddress: String
    var city: String
    var state: String
    var zipCode: Int
    var socialSecurityNumber: String
    
    init(
        amusementAreaAccess: Bool,
        allRidesAccess: Bool,
        birthday: String,
        firstName: String,
        lastName: String,
        foodDiscount: Double,
        merchDiscount: Double,
        streetAddress: String,
        city: String,
        state: String,
        zipCode: Int,
        socialSecurityNumber: String
        ) {
        self.streetAddress = streetAddress
        self.city = city
        self.state = state
        self.zipCode = zipCode
        self.socialSecurityNumber = socialSecurityNumber
        super.init(
            amusementAreaAccess: amusementAreaAccess,
            allRidesAccess: allRidesAccess,
            birthday: birthday,
            firstName: firstName,
            lastName: lastName,
            foodDiscount: foodDiscount,
            merchDiscount: merchDiscount
        )
        self.foodDiscount = 0.15
        self.merchDiscount = 0.25
        self.skipLines = false
        self.isSenior = false
    }
    
    
}


class HourlyMaintenanceSource: HourlyFoodServicesSource {
    
    var rideControlAreaAccess: Bool = true
    var maintenanceAreaAccess: Bool = true
    
}



class HourlyRideServicesSource: HourlyMaintenanceSource {
    
    override init(
        amusementAreaAccess: Bool,
        allRidesAccess: Bool,
        birthday: String,
        firstName: String,
        lastName: String,
        foodDiscount: Double,
        merchDiscount: Double,
        streetAddress: String,
        city: String,
        state: String,
        zipCode: Int,
        socialSecurityNumber: String
        ) {
        super.init(
            amusementAreaAccess: amusementAreaAccess,
            allRidesAccess: allRidesAccess,
            birthday: birthday,
            firstName: firstName,
            lastName: lastName,
            foodDiscount: foodDiscount,
            merchDiscount: merchDiscount,
            streetAddress: streetAddress,
            city: city,
            state: state,
            zipCode: zipCode,
            socialSecurityNumber: socialSecurityNumber
        )
        self.kitchenAreaAccess = false
        self.maintenanceAreaAccess = false
        
    }
    
}



class ManagerSource: HourlyMaintenanceSource {
    
    var isManager: Bool = true
    var officeAreasAccess: Bool = true
    var managementTier: String
    
    init(
        amusementAreaAccess: Bool,
        allRidesAccess: Bool,
        birthday: String,
        firstName: String,
        lastName: String,
        foodDiscount: Double,
        merchDiscount: Double,
        streetAddress: String,
        city: String,
        state: String,
        zipCode: Int,
        socialSecurityNumber: String,
        managementTier: String
        ) {
        self.managementTier = managementTier
        super.init(
            amusementAreaAccess: amusementAreaAccess,
            allRidesAccess: allRidesAccess,
            birthday: birthday,
            firstName: firstName,
            lastName: lastName,
            foodDiscount: foodDiscount,
            merchDiscount: merchDiscount,
            streetAddress: streetAddress,
            city: city,
            state: state,
            zipCode: zipCode,
            socialSecurityNumber: socialSecurityNumber
        )
        self.foodDiscount = 0.25
    }
    
    
}



class ContractEmployeeSource: VendorSource {
    
    var streetAddress: String
    var city: String
    var state: String
    var zipCode: String
    var socialSecurityNumber: String
    var projectNumber: String
    
    init(
        amusementAreaAccess: Bool,
        allRidesAccess: Bool,
        birthday: String,
        firstName: String,
        lastName: String,
        streetAddress: String,
        city: String,
        state: String,
        zipCode: String,
        socialSecurityNumber: String,
        vendorCompany: String,
        projectNumber: String,
        dateOfVisit: String
        ) {
        self.streetAddress = streetAddress
        self.city = city
        self.state = state
        self.zipCode = zipCode
        self.socialSecurityNumber = socialSecurityNumber
        self.projectNumber = projectNumber
        super.init(
            amusementAreaAccess: amusementAreaAccess,
            allRidesAccess: allRidesAccess,
            birthday: birthday,
            firstName: firstName,
            lastName: lastName,
            vendorCompany: vendorCompany,
            dateOfVisit: dateOfVisit
        )
        self.dateOfVisit = "N/A"
        self.vendorCompany = "N/A"
    }
    
}


class VendorSource: GuestClassicSource {
    
    var birthday: String
    var kitchenAreaAccess: Bool = true
    var rideAccessInstructions: String = "See Entrant Access Rules"
    var firstName: String
    var lastName: String
    var vendorCompany: String
    var dateOfVisit: String
    
    init(
        amusementAreaAccess: Bool,
        allRidesAccess: Bool,
        birthday: String,
        firstName: String,
        lastName: String,
        vendorCompany: String,
        dateOfVisit: String
        ) {
        self.birthday = birthday
        self.firstName = firstName
        self.lastName = lastName
        self.vendorCompany = vendorCompany
        self.dateOfVisit = dateOfVisit
        super.init(
            amusementAreaAccess: amusementAreaAccess,
            allRidesAccess: allRidesAccess
        )
        self.allRidesAccess = false
    }
    
    
}


enum Entrants {
    
    // cases as various Entrant Types w/ associated values of respective permissions/requirements
    case classic(
        amusementAreaAccess: Bool,
        allRidesAccess: Bool
    )
    
    case child(
        amusementAreaAccess: Bool,
        allRidesAccess: Bool,
        birthday: String
    )
    
    case seasonPass(
        amusementAreaAccess: Bool,
        allRidesAccess: Bool,
        birthday: String,
        skipLines: Bool,
        foodDiscount: Double,
        merchDiscount: Double,
        firstName: String,
        lastName: String,
        streetAddress: String,
        city: String,
        state: String,
        zipCode: Int
        
    )
    
    case senior(
        amusementAreaAccess: Bool,
        allRidesAccess: Bool,
        birthday: String,
        skipLines: Bool,
        foodDiscount: Double,
        merchDiscount: Double,
        firstName: String,
        lastName: String
    )
    
    case vip(
        amusementAreaAccess: Bool,
        allRidesAccess: Bool,
        skipLines: Bool,
        foodDiscount: Double,
        merchDiscount: Double
    )
    
    case contractEmployee(
        amusementAreaAccess: Bool,
        allRidesAccess: Bool,
        birthday: String,
        kitchenAreaAccess: Bool,
        seeEntrantRules: String,
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
        birthday: String,
        kitchenAreaAccess: Bool,
        foodDiscount: Double,
        merchDiscount: Double,
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
        birthday: String,
        rideControlAreaAccess: Bool,
        foodDiscount: Double,
        merchDiscount: Double,
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
        birthday: String,
        kitchenAreaAccess: Bool,
        maintenanceAreaAccess: Bool,
        rideControlAreaAccess: Bool,
        accessAllRides: Bool,
        foodDiscount: Double,
        merchDiscount: Double,
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
        birthday: String,
        kitchenAreaAccess: Bool,
        maintenanceAreaAccess: Bool,
        officeAreaAccess: Bool,
        rideControlAreaAccess: Bool,
        foodDiscount: Double,
        merchDiscount: Double,
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
        birthday: String,
        kitchenAreaAccess: Bool,
        seeEntrantRules: String,
        firstName: String,
        lastName: String,
        vendorCompany: String,
        dateOfVisit: String
    )
    
    
    // function to check the type and produce an onbject with its required permissions
    func Swipe() -> EntrantTypeable {
        
        switch self {
            
        case .classic(
            let amusementAreaAccess,
            let allRidesAccess
            ):
            
            return GuestClassicSource(
                amusementAreaAccess: amusementAreaAccess,
                allRidesAccess: allRidesAccess
            )
            
        case .vip(
            let amusementAreaAccess,
            let allRidesAccess,
            let skipAllLines,
            let foodDiscount,
            let merchDiscount
            ):
            
            return GuestVIPSource(
                amusementAreaAccess: amusementAreaAccess,
                allRidesAccess: allRidesAccess,
                //skipAllLines: skipAllLines,
                foodDiscount: foodDiscount,
                merchDiscount: merchDiscount
            )
            
        case .child(
            let amusementAreaAccess,
            let allRidesAccess,
            let birthday
            ):
            return GuestFreeChildSource(
                amusementAreaAccess: amusementAreaAccess,
                allRidesAccess: allRidesAccess,
                birthday: birthday
            )
            
        case .seasonPass(
            let amusementAreaAccess,
            let allRidesAccess,
            let birthday,
            let skipAllLines,
            let foodDiscount,
            let merchDiscount,
            let firstName,
            let lastName,
            let streetAddress,
            let city,
            let state,
            let zipCode
            ):
            return GuestSeasonPassSource(
                amusementAreaAccess: amusementAreaAccess,
                allRidesAccess: allRidesAccess,
                //foodDiscount: foodDiscount,
                //merchDiscount: merchDiscount,
                birthday: birthday,
                firstName: firstName,
                lastName: lastName,
                foodDiscount: foodDiscount,
                merchDiscount: merchDiscount,
                streetAddress: streetAddress,
                city: city,
                state: state,
                zipCode: zipCode
                
            )
            
        case .senior(
            let amusementAreaAccess,
            let allRidesAccess,
            let birthday,
            let skipAllLines,
            let foodDiscount,
            let merchDiscount,
            let firstName,
            let lastName
            ):
            return GuestSeniorSource(
                amusementAreaAccess: amusementAreaAccess,
                allRidesAccess: allRidesAccess,
                skipAllLines: skipAllLines,
                foodDiscount: foodDiscount,
                merchDiscount: merchDiscount,
                birthday: birthday,
                firstName: firstName,
                lastName: lastName,
                foodDiscount: foodDiscount,
                merchDiscount: merchDiscount
            )
            
        case .contractEmployee(
            let amusementAreaAccess,
            let birthday,
            let kitchenAreaAccess,
            let seeEntrantRules,
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
                birthday: birthday,
                kitchenAreaAccess: kitchenAreaAccess,
                seeEntrantRules: seeEntrantRules,
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
            
        case .hourlyFood(
            let amusementAreaAccess,
            let allRidesAccess,
            let birthday,
            let kitchenAreaAccess,
            let foodDiscount,
            let merchDiscount,
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
                kitchenAreaAccess: kitchenAreaAccess,
                allRidesAccess: allRidesAccess,
                foodDiscount: foodDiscount,
                merchDiscount: merchDiscount,
                birthday: birthday,
                firstName: firstName,
                lastName: lastName,
                foodDiscount: foodDiscount,
                merchDiscount: merchDiscount,
                streetAddress: streetAddress,
                city: city,
                state: state,
                zipCode: zipCode,
                socialSecurityNumber: socialSecurityNumber
            )
            
        case .hourlyRide(
            let amusementAreaAccess,
            let allRidesAccess,
            let birthday,
            let rideControlAreaAccess,
            let foodDiscount,
            let merchDiscount,
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
                birthday: birthday,
                rideControlAreaAccess: rideControlAreaAccess,
                foodDiscount: foodDiscount,
                merchDiscount: merchDiscount,
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
            let birthday,
            let kitchenAreaAccess,
            let maintenanceAreaAccess,
            let rideControlAreaAccess,
            let foodDiscount,
            let merchDiscount,
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
                birthday: birthday,
                kitchenAreaAccess: kitchenAreaAccess,
                maintenanceAreaAccess: maintenanceAreaAccess,
                rideControlAreaAccess: rideControlAreaAccess,
                foodDiscount: foodDiscount,
                merchDiscount: merchDiscount,
                firstName: firstName,
                lastName: lastName,
                streetAddress: streetAddress,
                city: city,
                state: state,
                zipCode: zipCode,
                socialSecurityNumber: socialSecurityNumber
            )
            
        case .manager(
            let amusementAreaAccess,
            let allRidesAccess,
            let birthday,
            let kitchenAreaAccess,
            let maintenanceAreaAccess,
            let officeAreaAccess,
            let rideControlAreaAccess,
            let foodDiscount,
            let merchDiscount,
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
                birthday: birthday,
                kitchenAreaAccess: kitchenAreaAccess,
                maintenanceAreaAccess: maintenanceAreaAccess,
                officeAreaAccess: officeAreaAccess,
                rideControlAreaAccess: rideControlAreaAccess,
                foodDiscount: foodDiscount,
                merchDiscount: merchDiscount,
                firstName: firstName,
                lastName: lastName,
                streetAddress: streetAddress,
                city: city,
                state: state,
                zipCode: zipCode,
                socialSecurityNumber: socialSecurityNumber,
                managementTier: managementTier
            )
            
        case .vendor(
            let amusementAreaAccess,
            let birthday,
            let kitchenAreaAccess,
            let seeEntrantRules,
            let firstName,
            let lastName,
            let vendorCompany,
            let dateOfVisit
            ):
            return VendorSource(
                amusementAreaAccess: amusementAreaAccess,
                birthday: birthday,
                kitchenAreaAccess: kitchenAreaAccess,
                seeEntrantRules: seeEntrantRules,
                firstName: firstName,
                lastName: lastName,
                vendorCompany: vendorCompany,
                dateOfVisit: dateOfVisit
            )
            
            
        }
        
    }
    
}