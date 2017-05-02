//: Playground - noun: a place where people can play

import UIKit
import Foundation



protocol EntrantTypeable {
    
    var amusementAreaAccess: Bool { get set }
    var allRidesAccess: Bool { get set }
    
}

struct GuestClassicSource: EntrantTypeable {
    
    let isClassic: Bool
    var amusementAreaAccess: Bool
    var allRidesAccess: Bool
    
}



struct GuestChildSource: EntrantTypeable {
    
    let isChild:Bool
    var amusementAreaAccess: Bool
    var allRidesAccess: Bool
    var birthday: String
    
}


struct GuestVIPSource: EntrantTypeable {
    
    let isVIP: Bool
    var amusementAreaAccess: Bool
    var allRidesAccess: Bool
    var skipLines: Bool
    var foodDiscount: Double
    var merchDiscount: Double
    
}


struct GuestSeniorSource: EntrantTypeable {
    
    let isSenior: Bool
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
    
    let isSeasonPass: Bool
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


enum Guest {
    
    case classic(
        isClassic: Bool,
        amusementAreaAccess: Bool,
        allRidesAccess: Bool
        
    )
    
    case child(
        isChild: Bool,
        amusementAreaAccess: Bool,
        allRidesAccess: Bool,
        birthday: String
    )
    
    
    case vip(
        isVIP: Bool,
        amusementAreaAccess: Bool,
        allRidesAccess: Bool,
        skipLines: Bool,
        foodDiscount: Double,
        merchDiscount: Double

    )
    
    case senior(
        isSenior: Bool,
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
        isSeasonPass: Bool,
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
            let isClassic,
            let amusementAreaAccess,
            let allRidesAccess
            ):
            return GuestClassicSource (
                isClassic: isClassic,
                amusementAreaAccess: amusementAreaAccess,
                allRidesAccess: allRidesAccess
            )
            
 
        case .child(
            let isChild,
            let amusementAreaAccess,
            let allRidesAccess,
            let birthday
            ):
            return GuestChildSource(
                isChild: isChild,
                amusementAreaAccess: amusementAreaAccess,
                allRidesAccess: allRidesAccess,
                birthday: birthday
            )
            
     
        case .vip(
            let isVIP,
            let amusementAreaAccess,
            let allRidesAccess,
            let skipLines,
            let foodDiscount,
            let merchDiscount
            ):
            return GuestVIPSource(
                isVIP: isVIP,
                amusementAreaAccess: amusementAreaAccess,
                allRidesAccess: allRidesAccess,
                skipLines: skipLines,
                foodDiscount: foodDiscount,
                merchDiscount: merchDiscount
            )
        
     
        case .senior(
            let isSenior,
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
                isSenior: isSenior,
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
        let isSeasonPass,
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
                isSeasonPass: isSeasonPass,
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






