//
//  ManagerSource.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Michael Guatambu Davis on 4/14/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation

// getting the ball rolling

class ManagerSource: Swipeable {
    
    //arrays of entrant type specific required info
    var managerTier = [ManagerType.shift, ManagerType.senior, ManagerType.general]
    var areaAccess = [AreaAccess.amusement, AreaAccess.kitchen, AreaAccess.maintenance, AreaAccess.office, AreaAccess.rideControl]
    var discountFood = "\(DiscountAmount.twentyfive.rawValue) \(DiscountAccess.food.rawValue)"
    var discountMerch = "\(DiscountAmount.twentyfive.rawValue) \(DiscountAccess.merch.rawValue)"
    var rideAccess = RideAccess.all
    var requiredInfoType = RequiredInformationType.personal
    var requiredInfo = [CollectedData.firstName, CollectedData.lastName, CollectedData.street, CollectedData.city, CollectedData.state, CollectedData.zip, CollectedData.ssn, CollectedData.birthdate, CollectedData.managementTier]
    
    
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
    
    init(isManager: Bool = true,
         isVendor: Bool = false,
         amusementAreaAccessGranted: Bool = true,
         kitchenAreaAccessGranted: Bool = true,
         maintenanceAreaAccessGranted: Bool = true,
         officeAreaAccessGranted: Bool = true,
         rideControlAreaAccessGranted: Bool = true,
         rideAccessGranted: Bool = true,
         skipLineGranted: Bool = false,
         youngEnough: Bool = false,
         oldEnough: Bool = false,
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
