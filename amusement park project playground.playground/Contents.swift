//: Playground - noun: a place where people can play

import UIKit
import Foundation



enum EntrantTypeSwipe {
    
    // cases as various Entrant Types w/ associated values of respective permissions/requirements
    case classic(
        amusementAreaAccess: String,
        accessAllRides: String
    )
    
    case vip(
        amusementAreaAccess: String,
        accessAllRides: String,
        skipAllLines: String,
        tenFoodDiscount: String,
        twentyMerchDiscount: String
    )
    
    case child(
        amusementAreaAccess: String,
        accessAllRides: String,
        dateOfBirth: String
    )
    
    case seasonPass(amusementAreaAccess: String,
        accessAllRides: String,
        skipAllLines: String,
        tenFoodDiscount: String,
        twentyMerchDiscount: String,
        firstName: String,
        lastName: String,
        streetAddress: String,
        city: String,
        state: String,
        zipCode: String,
        dateOfBirth: String
    )
    
    case senior(amusementAreaAccess: String,
        accessAllRides: String,
        skipAllLines: String,
        tenFoodDiscount: String,
        tenMerchDiscount: String,
        firstName: String,
        lastName: String,
        dateOfBirth: String
    )
    
    case contractEmployee(
        amusementAreaAccess: String,
        kitchenAreaAccess: String,
        seeEntrantRules: String,
        noDiscount: String,
        firstName: String,
        lastName: String,
        streetAddress: String,
        city: String,
        state: String,
        zipCode: String,
        dateOfBirth: String,
        socialSecurityNumber: String,
        projectNumber: String
    )
    
    case hourlyFood(
        amusementAreaAccess: String,
        kitchenAreaAccess: String,
        accessAllRides: String,
        fifteenFoodDiscount: String,
        twentyfiveMerchDiscount: String,
        firstName: String,
        lastName: String,
        streetAddress: String,
        city: String,
        state: String,
        zipCode: String,
        dateOfBirth: String,
        socialSecurityNumber: String
    )
    
    case hourlyRide(
        amusementAreaAccess: String,
        rideControlAreaAccess: String,
        accessAllRides: String,
        fifteenFoodDiscount: String,
        twentyfiveMerchDiscount: String,
        firstName: String,
        lastName: String,
        streetAddress: String,
        city: String,
        state: String,
        zipCode: String,
        dateOfBirth: String,
        socialSecurityNumber: String
    )
    
    case hourlyMaintenance(
        amusementAreaAccess: String,
        maintenanceAreaAccess: String,
        rideControlAreaAccess: String,
        String, accessAllRides: String,
        fifteenFoodDiscount: String,
        twentyfiveMerchDiscount: String,
        firstName: String,
        lastName: String,
        streetAddress: String,
        city: String,
        state: String,
        zipCode: String,
        dateOfBirth: String,
        socialSecurityNumber: String
    )
    
    case manager(
        amusementAreaAccess: String,
        kitchenAreaAccess: String,
        maintenanceAreaAccess: String,
        officeAreaAccess: String,
        rideControlAreaAccess: String,
        accessAllRides: String,
        twentyfiveFoodDiscount: String,
        twentyfiveMerchDiscount: String,
        firstName: String,
        lastName: String,
        streetAddress: String,
        city: String,
        state: String,
        zipCode: String,
        dateOfBirth: String,
        socialSecurityNumber: String,
        managementTier: String
    )
    
    case vendor(
        amusementAreaAccess: String,
        kitchenAreaAccess: String,
        seeEntrantRules: String,
        noDiscount: String,
        firstName: String,
        lastName: String,
        vendorCompany: String,
        dateOfBirth: String,
        dateOfVisit: String
    )
    
    
    // function to check the type and produce an onbject with its required permissions
    func Swipe() -> /* a custom type */ {
        // MARK: this EntrantType needs to be reworked to create the appropriate obect created via inheritance as a class
        
        switch self {
            
        case .classic(
            let amusementAreaAccess,
            let accessAllRides
            ):
            return /* a custom type */
            
        case .vip(
            let amusementAreaAccess,
            let accessAllRides,
            let skipAllLines,
            let tenFoodDiscount,
            let twentyMerchDiscount
            ):
            return /* a custom type */
            
            
        case .child(
            let amusementAreaAccess,
            let accessAllRides,
            let dateOfBirth
            ):
            return /* a custom type */
            
        case .seasonPass(
            let amusementAreaAccess,
            let accessAllRides,
            let skipAllLines,
            let tenFoodDiscount,
            let twentyMerchDiscount,
            let firstName,
            let lastName,
            let streetAddress,
            let city,
            let state,
            let zipCode,
            let dateofBirth
            ):
            return /* a custom type */
            
        case .senior(
            let amusementAreaAccess,
            let accessAllRides,
            let skipAllLines,
            let tenFoodDiscount,
            let tenMerchDiscount,
            let firstName,
            let lastName,
            let dateofBirth
            ):
            return /* a custom type */
            
        case .contractEmployee(
            let amusementAreaAccess,
            let kitchenAreaAccess,
            let seeEntrantRules,
            let noDiscount,
            let firstName,
            let lastName,
            let streetAddress,
            let city,
            let state,
            let zipCode,
            let dateofBirth,
            let socialSecurityNumber,
            let projectNumber
            ):
            return /* a custom type */
            
        case .hourlyFood(
            let amusementAreaAccess,
            let kitchenAreaAccess,
            let accessAllRides,
            let fifteenFoodDiscount,
            let twentyfiveMerchDiscount,
            let firstName,
            let lastName,
            let streetAddress,
            let city,
            let state,
            let zipCode,
            let dateofBirth,
            let socialSecurityNumber
            ):
            return /* a custom type */
            
        case .hourlyRide(
            let amusementAreaAccess,
            let rideControlAreaAccess,
            let accessAllRides,
            let fifteenFoodDiscount,
            let twentyfiveMerchDiscount,
            let firstName,
            let lastName,
            let streetAddress,
            let city,
            let state,
            let zipCode,
            let dateofBirth,
            let socialSecurityNumber
            ):
            return /* a custom type */
            
        case .hourlyMaintenance(
            let amusementAreaAccess,
            let kitchenAreaAccess,
            let maintenanceAreaAccess,
            let rideControlAreaAccess,
            let accessAllRides,
            let fifteenFoodDiscount,
            let twentyfiveMerchDiscount,
            let firstName,
            let lastName,
            let streetAddress,
            let city,
            let state,
            let zipCode,
            let dateofBirth,
            let socialSecurityNumber
            ):
            return /* a custom type */
            
        case .manager(
            let amusementAreaAccess,
            let kitchenAreaAccess,
            let maintenanceAreaAccess,
            let officeAreaAccess,
            let rideControlAreaAccess,
            let accessAllRides,
            let twentyfiveFoodDiscount,
            let twentyfiveMerchDiscount,
            let firstName,
            let lastName,
            let streetAddress,
            let city,
            let state,
            let zipCode,
            let dateofBirth,
            let socialSecurityNumber,
            let managementTier
            ):
            return /* a custom type */
            
        case .vendor(
            let amusementAreaAccess,
            let kitchenAreaAccess,
            let seeEntrantRules,
            let noDiscount,
            let firstName,
            let lastName,
            let vendorCompany,
            let dateofBirth,
            let dateOfVisit
            ):
            return /* a custom type */
            
            
        }
        
    }
}









