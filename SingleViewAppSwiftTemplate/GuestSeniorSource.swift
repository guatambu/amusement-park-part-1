//
//  SeniorGuestSource.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Kelly Johnson on 4/20/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation

class SeniorGuestSource: Swipeable {
    
    //arrays of entrant type specific required info
    var areaAccess = AreaAccess.amusement
    var discountFood = "\(DiscountAmount.ten.rawValue) \(DiscountAccess.food.rawValue)"
    var discountMerch = "\(DiscountAmount.ten.rawValue) \(DiscountAccess.merch.rawValue)"
    var rideAccess = [RideAccess.all, RideAccess.skip]
    var requiredInfoType = RequiredInformationType.personal
    var requiredInfo = [CollectedData.firstName, CollectedData.lastName, CollectedData.birthdate]
    
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
    
    init(isManager: Bool = false,
         isVendor: Bool = false,
         amusementAreaAccessGranted: Bool = true,
         kitchenAreaAccessGranted: Bool = false,
         maintenanceAreaAccessGranted: Bool = false,
         officeAreaAccessGranted: Bool = false,
         rideControlAreaAccessGranted: Bool = false,
         rideAccessGranted: Bool = true,
         skipLineGranted: Bool = true,
         youngEnough: Bool = false,
         oldEnough: Bool = true,
         todayYourBirthday: Bool = false,
         doYouGetDiscount: Bool = true) {
        
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
    
}