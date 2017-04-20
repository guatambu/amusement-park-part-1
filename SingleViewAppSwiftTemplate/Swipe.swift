//
//  SwipeSource.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Kelly Johnson on 4/20/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation

protocol Swipeable {
    var amusementAreaAccessGranted: Bool { get set }
    var kitchenAreaAccessGranted: Bool { get set }
    var maintenanceAreaAccessGranted: Bool { get set }
    var officeAreaAccessGranted: Bool { get set }
    var rideControlAreaAccessGranted: Bool { get set }
    var rideAccessGranted: Bool { get set }
    var skipLineGranted: Bool { get set }
    var youngEnough: Bool { get }
    var todayYourBirthday: Bool { get }
    var doYouGetDiscount: Bool { get set }
    
    func Swipe()
}

class Swipe: Swipeable {
    
    var amusementAreaAccessGranted: Bool
    var kitchenAreaAccessGranted: Bool
    var maintenanceAreaAccessGranted: Bool
    var officeAreaAccessGranted: Bool
    var rideControlAreaAccessGranted: Bool
    var rideAccessGranted: Bool
    var skipLineGranted: Bool
    var youngEnough: Bool
    var todayYourBirthday: Bool
    var doYouGetDiscount: Bool
    
    init(amusementAreaAccessGranted: Bool,
         kitchenAreaAccessGranted: Bool,
         maintenanceAreaAccessGranted: Bool,
         officeAreaAccessGranted: Bool,
         rideControlAreaAccessGranted: Bool,
         rideAccessGranted: Bool,
         skipLineGranted: Bool,
         youngEnough: Bool,
         todayYourBirthday: Bool,
         doYouGetDiscount: Bool) {
        
        self.amusementAreaAccessGranted = amusementAreaAccessGranted
        self.kitchenAreaAccessGranted = kitchenAreaAccessGranted
        self.maintenanceAreaAccessGranted = maintenanceAreaAccessGranted
        self.officeAreaAccessGranted = officeAreaAccessGranted
        self.rideControlAreaAccessGranted = rideControlAreaAccessGranted
        self.rideAccessGranted = rideAccessGranted
        self.skipLineGranted = skipLineGranted
        self.youngEnough = youngEnough
        self.todayYourBirthday = todayYourBirthday
        self.doYouGetDiscount = doYouGetDiscount
    }
    /// this function checks the permissions for various Entrant Types and returns Bool
    func Swipe() {
        switch EntrantType {
        case .classic:
        case .vip:
        case .child:
        case .seasonPass:
        case .senior:
        case .contractEmployee:
        case .hourlyFood:
        case .hourlyRide:
        case .hourlyMaintenance:
        case .manager:
        case .vendor:
        }
    }
}




















