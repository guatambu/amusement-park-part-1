//
//  VendorSource.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Kelly Johnson on 4/20/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation

class VendorSource: Swipeable {
    
    //arrays of entrant type specific required info
    var areaAccess = [AreaAccess.amusement, AreaAccess.kitchen]
    var discountFood = "none"
    var discountMerch = "none"
    var rideAccess = "see entrant rules"
    var requiredInfoType = RequiredInformationType.business
    var requiredInfo = [CollectedData.firstName, CollectedData.lastName, CollectedData.vendorCompany, CollectedData.birthdate, CollectedData.visitDate]
    
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
         isVendor: Bool = true,
         amusementAreaAccessGranted: Bool = true,
         kitchenAreaAccessGranted: Bool = true,
         maintenanceAreaAccessGranted: Bool = false,
         officeAreaAccessGranted: Bool = false,
         rideControlAreaAccessGranted: Bool = false,
         rideAccessGranted: Bool  = false,
         skipLineGranted: Bool = false,
         youngEnough: Bool = false,
         oldEnough: Bool = false,
         todayYourBirthday: Bool = false,
         doYouGetDiscount: Bool = false) {
        
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
