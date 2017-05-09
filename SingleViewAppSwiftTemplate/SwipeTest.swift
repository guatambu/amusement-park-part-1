//
//  SwipeTest.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Michael Guatambu Davis on 4/30/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation

// swipe method checks

func swipeAreaAccess(check entrant: PersonSource) {
    
    for area in entrant.areaAccess {
        switch area {
        case .amusement:
            print("VALID: amusement areas")
        case .office:
            print("VALID: office")
            break
        case .maintenance:
            print("VALID: maintenance")
            break
        case .kitchen:
            print("VALID: kitchen")
            break
        case .rideControl:
            print("VALID: ride control")
        }
    }
}


func swipeRidePrivileges(check entrant: PersonSource) {
    
    for privilege in entrant.ridePrivileges {
        switch privilege {
        case .all:
            print("VALID: pass holder may ride the attraction")
        case .skip:
            print("VALID: pass holder may skip line of attractions")
        case .deferToRules:
            print("INVALID: pass holder must provide permissions")
        }
    }
    
}


func swipeDiscount(check entrant: PersonSource) {
    
    for discount in entrant.discountAccess {
        switch discount {
        case .food:
            print("VALID: pass holder receives food discount")
        case .merch:
            print("VALID: pass holder receives merch discount")
        case .none:
            print("INVALID: no discounts")
        }
    }
}


func swipeRequiredInfo(check entrant: PersonSource) {
    
    for person in entrant.requiredInformation {
        switch person {
        case .business:
            print("pass holder must provide required business information")
        case .personal:
            print("pass holder must provide required personal information")
        case .none:
            print("none")
        }
    }
}




