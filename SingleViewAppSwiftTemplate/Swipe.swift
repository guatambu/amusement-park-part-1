//
//  SwipeSource.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Kelly Johnson on 4/20/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation

protocol Swipeable {
    var isManager: Bool { get }
    var amusementAreaAccessGranted: Bool { get }
    var kitchenAreaAccessGranted: Bool { get }
    var maintenanceAreaAccessGranted: Bool { get }
    var officeAreaAccessGranted: Bool { get }
    var rideControlAreaAccessGranted: Bool { get }
    var rideAccessGranted: Bool { get }
    var skipLineGranted: Bool { get }
    var youngEnough: Bool { get }
    var oldEnough: Bool { get }
    var todayYourBirthday: Bool { get }
    var doYouGetDiscount: Bool { get }
    
    
}

class Swipe: Swipeable {
    
    var isManager: Bool
    var isVendor: Bool
    var amusementAreaAccessGranted: Bool
    var kitchenAreaAccessGranted: Bool
    var maintenanceAreaAccessGranted: Bool
    var officeAreaAccessGranted: Bool
    var rideControlAreaAccessGranted: Bool
    var rideAccessGranted: Bool
    var skipLineGranted: Bool
    var youngEnough: Bool
    var oldEnough: Bool
    var todayYourBirthday: Bool
    var doYouGetDiscount: Bool
    
    init(isManager: Bool,
         isVendor: Bool,
         amusementAreaAccessGranted: Bool,
         kitchenAreaAccessGranted: Bool,
         maintenanceAreaAccessGranted: Bool,
         officeAreaAccessGranted: Bool,
         rideControlAreaAccessGranted: Bool,
         rideAccessGranted: Bool,
         skipLineGranted: Bool,
         youngEnough: Bool,
         oldEnough: Bool,
         todayYourBirthday: Bool,
         doYouGetDiscount: Bool) {
        
        self.isManager = isManager
        self.isVendor = isVendor
        self.amusementAreaAccessGranted = amusementAreaAccessGranted
        self.kitchenAreaAccessGranted = kitchenAreaAccessGranted
        self.maintenanceAreaAccessGranted = maintenanceAreaAccessGranted
        self.officeAreaAccessGranted = officeAreaAccessGranted
        self.rideControlAreaAccessGranted = rideControlAreaAccessGranted
        self.rideAccessGranted = rideAccessGranted
        self.skipLineGranted = skipLineGranted
        self.youngEnough = youngEnough
        self.oldEnough = oldEnough
        self.todayYourBirthday = todayYourBirthday
        self.doYouGetDiscount = doYouGetDiscount
    }
    /// this function checks the permissions for various Entrant Types and returns Bool
    func checkEntrantValidity(pass holder: TestUser) -> EntrantType {
        
        var entrant: EntrantType
            
        // guest: classic
        if (amusementAreaAccessGranted === true) && (rideAccessGranted === true){
            entrant = EntrantType.classic
            print("\(EntrantType.classic.rawValue) is valid")
            
        // guest: child
        } else if (youngEnough === true){
            entrant = EntrantType.child
            print("\(EntrantType.child.rawValue) is valid")
            
        // guest: seasonPass
        } else if (amusementAreaAccessGranted === true) && (doYouGetDiscount === true) && (skipLineGranted === true) {
            entrant = EntrantType.seasonPass
            print("\(EntrantType.seasonPass.rawValue) is valid")
            
        // guest: senior
        } else if (oldEnough === true) {
            entrant = EntrantType.senior
            print("\(EntrantType.senior.rawValue) is valid")
            
        // guest: VIP
        } else if (amusementAreaAccessGranted === true) && (rideAccessGranted === true) && (skipLineGranted === true) && (doYouGetDiscount === true) {
            entrant = EntrantType.vip
            print("\(EntrantType.vip.rawValue) is valid")
            
        // hourly: food
        } else if (kitchenAreaAccessGranted === true) && (doYouGetDiscount === true) {
            entrant = EntrantType.food
            print("\(EntrantType.hourlyFood.rawValue) is valid")
            
        // hourly: maintenance
        } else if (maintenanceAreaAccessGranted === true) && (doYouGetDiscount === true) {
            entrant = EntrantType.maintenance
            print("\(EntrantType.hourlyMaintenance.rawValue) is valid")
            
        // hourly: ride services
        } else if (rideControlAreaAccessGranted === true) && (doYouGetDiscount == true) {
            entrant = EntrantType.hourlyRide
            print("\(EntrantType.hourlyRide.rawValue) is valid")
        
        // manager
        } else if (isManager === true) {
            entrant = EntrantType.manager
            print("\(.manager.rawValue) is valid")
            
        // contract employee
        } else if (amusementAreaAccessGranted) && (kitchenAreaAccessGranted === true) {
            entrant = EntrantType.contractEmployee
            print("\(.contractEmployee.rawValue) is valid")
        // vendor
        } else if (isVendor === true) {
            entrant = EntrantType.vendor
            print("\(.vendor.rawValue) is valid")
        }
        
        return entrant
        
    }
}




















