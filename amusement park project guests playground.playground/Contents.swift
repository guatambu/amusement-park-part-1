//: Playground - noun: a place where people can play

import UIKit
import Foundation



protocol EntrantTypeable {
    
    var amusementAreaAccess: Bool { get set }
    var allRidesAccess: Bool { get set }
    
}

struct GuestClassicSource: EntrantTypeable {
    
    var amusementAreaAccess: Bool
    var allRidesAccess: Bool
    
}



struct GuestChildSource: EntrantTypeable {
    
    var amusementAreaAccess: Bool
    var allRidesAccess: Bool
    var birthday: String
    
}


struct GuestVIPSource: EntrantTypeable {
    
    var amusementAreaAccess: Bool
    var allRidesAccess: Bool
    var skipLines: Bool
    var foodDiscount: Double
    var merchDiscount: Double
    
}


struct GuestSeniorSource: EntrantTypeable {
    
    var amusementAreaAccess: Bool
    var allRidesAccess: Bool
    var skipLines: Bool
    var foodDiscount: Double
    var merchDiscount: Double
    var birthday: String
    var firstName: String
    var lastName: String
    
}


struct GuestSeasonPassSource: EntrantTypeable {
    
    var amusementAreaAccess: Bool
    var allRidesAccess: Bool
    var skipLines: Bool
    var foodDiscount: Double
    var merchDiscount: Double
    var birthday: String
    var firstName: String
    var lastName: String
    var streetAddress: String
    var city: String
    var state: String
    var zipCode: Int
    
    
}


enum GuestTypes {
    
    case classic(
        amusementAreaAccess: Bool,
        allRidesAccess: Bool
        
    )
    
    case child(
        amusementAreaAccess: Bool,
        allRidesAccess: Bool,
        birthday: String
    )
    
    
    case vip(
        amusementAreaAccess: Bool,
        allRidesAccess: Bool,
        skipLines: Bool,
        foodDiscount: Double,
        merchDiscount: Double

    )
    
    case senior(
        amusementAreaAccess: Bool,
        allRidesAccess: Bool,
        skipLines: Bool,
        foodDiscount: Double,
        merchDiscount: Double,
        birthday: String,
        firstName: String,
        lastName: String
       
    )
    
    
    case seasonPass(
        amusementAreaAccess: Bool,
        allRidesAccess: Bool,
        skipLines: Bool,
        foodDiscount: Double,
        merchDiscount: Double,
        birthday: String,
        firstName: String,
        lastName: String,
        streetAddress: String,
        city: String,
        state: String,
        zipCode: Int
        
    )

    func GuestGenerator() -> EntrantTypeable {
        
        switch self {
            
            // guests of all types
            
        case .classic(
            let amusementAreaAccess,
            let allRidesAccess
            ):
            return GuestClassicSource (
                amusementAreaAccess: amusementAreaAccess,
                allRidesAccess: allRidesAccess
            )
            
 
        case .child(
            let amusementAreaAccess,
            let allRidesAccess,
            let birthday
            ):
            return GuestChildSource(
                amusementAreaAccess: amusementAreaAccess,
                allRidesAccess: allRidesAccess,
                birthday: birthday
            )
            
     
        case .vip(
            let amusementAreaAccess,
            let allRidesAccess,
            let skipLines,
            let foodDiscount,
            let merchDiscount
            ):
            return GuestVIPSource(
                amusementAreaAccess: amusementAreaAccess,
                allRidesAccess: allRidesAccess,
                skipLines: skipLines,
                foodDiscount: foodDiscount,
                merchDiscount: merchDiscount
            )
        
     
        case .senior(
            let amusementAreaAccess,
            let allRidesAccess,
            let skipLines,
            let foodDiscount,
            let merchDiscount,
            let birthday,
            let firstName,
            let lastName
            ):
            return GuestSeniorSource(
                amusementAreaAccess: amusementAreaAccess,
                allRidesAccess: allRidesAccess,
                skipLines: skipLines,
                foodDiscount: foodDiscount,
                merchDiscount: merchDiscount,
                birthday: birthday,
                firstName: firstName,
                lastName: lastName
            )
            
       
        case .seasonPass(
            let amusementAreaAccess,
            let allRidesAccess,
            let skipLines,
            let foodDiscount,
            let merchDiscount,
            let birthday,
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
                skipLines: skipLines,
                foodDiscount: foodDiscount,
                merchDiscount: merchDiscount,
                birthday: birthday,
                firstName: firstName,
                lastName: lastName,
                streetAddress: streetAddress,
                city: city,
                state: state,
                zipCode: zipCode
            )
            
            
        }
    }
}






