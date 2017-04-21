//
//  TestUserSource.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Kelly Johnson on 4/21/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation

class TestUserSource: Swipeable {

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
}
