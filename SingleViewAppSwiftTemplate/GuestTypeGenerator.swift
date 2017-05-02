//
//  SwipeSource.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Michael Guatambu Davis on 4/20/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation



enum GuestTypes {
    
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
            return GuestFreeChildSource(
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











