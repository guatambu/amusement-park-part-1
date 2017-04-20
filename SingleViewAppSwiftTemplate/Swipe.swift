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
                print("\(.classic.rawValue) is valid")
            
        case .vip:
                print("\(.vip.rawValue) is valid")
            
        case .child:
                print("\(.child.rawValue) is valid")
            
        case .seasonPass:
                print("\(.seasonPass.rawValue) is valid")
            
        case .senior:
                print("\(.senior.rawValue) is valid")
            
        case .contractEmployee:
                print("\(.contractEmployee.rawValue) is valid")
            
        case .hourlyFood:
                print("\(.hourlyFood.rawValue) is valid")
            
        case .hourlyRide:
                print("\(.hourlyRide.rawValue) is valid")
            
        case .hourlyMaintenance:
                print("\(.hourlyMaintenance.rawValue) is valid")
            
        case .manager where ManagerType.shift:
                print("\(ManagerType.shift.rawValue) \(.manager.rawValue) is valid")
            
        case .manager where ManagerType.general:
                print("\(ManagerType.general.rawValue) \(.manager.rawValue) is valid")
            
        case .manager where ManagerType.senior:
                print("\(ManagerType.senior.rawValue) \(.manager.rawValue) is valid")
            
        case .vendor:
                print("\(.vendor.rawValue) is valid")
            
        }
    }
}




















