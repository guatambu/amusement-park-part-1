//: Playground - noun: a place where people can play

import UIKit
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

enum EntrantType: String {
    case classic = "Classic Guest"
    case vip = "VIP Guest"
    case child = "Free Child Guest"
    case seasonPass = "Season Pass Guest"
    case senior = "Senior Guest"
    case contractEmployee = "Contract Employee"
    case hourlyFood = "Hourly Employee - Food Services"
    case hourlyRide = "Hourly Employee - Ride Services"
    case hourlyMaintenance = "Hourly Employee - Maintenance"
    case manager = "Manager"
    case vendor = "Vendor"
}

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

let testUser = TestUserSource()

class ContractEmployeeSource: Swipeable {
    /*
    //arrays of entrant type specific required info
    var areaAccess = [AreaAccess.amusement, AreaAccess.kitchen]
    var discountFood = "none"
    var discountMerch = "none"
    var rideAccess = "see entrant access rules"
    var requiredInfoType = RequiredInformationType.business
    var requiredInfo = [CollectedData.firstName, CollectedData.lastName, CollectedData.street, CollectedData.city, CollectedData.state, CollectedData.zip, CollectedData.ssn, CollectedData.birthdate, CollectedData.projectNumber]
    */
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
         kitchenAreaAccessGranted: Bool = true,
         maintenanceAreaAccessGranted: Bool = false,
         officeAreaAccessGranted: Bool = false,
         rideControlAreaAccessGranted: Bool = false,
         rideAccessGranted: Bool = false,
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
    func checkEntrantValidity(pass holder: TestUserSource) -> EntrantType {
        
        var entrant = EntrantType.classic
        
        // guest: classic
        if (amusementAreaAccessGranted == true) && (rideAccessGranted == true){
            
            print("\(EntrantType.classic.rawValue) is valid")
            
            // guest: child
        } else if (youngEnough == true){
            entrant = EntrantType.child
            print("\(EntrantType.child.rawValue) is valid")
            
            // guest: seasonPass
        } else if (amusementAreaAccessGranted == true) && (doYouGetDiscount == true) && (skipLineGranted == true) {
            entrant = EntrantType.seasonPass
            print("\(EntrantType.seasonPass.rawValue) is valid")
            
            // guest: senior
        } else if (oldEnough == true) {
            entrant = EntrantType.senior
            print("\(EntrantType.senior.rawValue) is valid")
            
            // guest: VIP
        } else if (amusementAreaAccessGranted == true) && (rideAccessGranted == true) && (skipLineGranted == true) && (doYouGetDiscount == true) {
            entrant = EntrantType.vip
            print("\(EntrantType.vip.rawValue) is valid")
            
            // hourly: food
        } else if (kitchenAreaAccessGranted == true) && (doYouGetDiscount == true) {
            entrant = EntrantType.hourlyFood
            print("\(EntrantType.hourlyFood.rawValue) is valid")
            
            // hourly: maintenance
        } else if (maintenanceAreaAccessGranted == true) && (doYouGetDiscount == true) {
            entrant = EntrantType.hourlyMaintenance
            print("\(EntrantType.hourlyMaintenance.rawValue) is valid")
            
            // hourly: ride services
        } else if (rideControlAreaAccessGranted == true) && (doYouGetDiscount == true) {
            entrant = EntrantType.hourlyRide
            print("\(EntrantType.hourlyRide.rawValue) is valid")
            
            // manager
        } else if (isManager == true) {
            entrant = EntrantType.manager
            print("\(EntrantType.manager.rawValue) is valid")
            
            // contract employee
        } else if (amusementAreaAccessGranted == true) && (kitchenAreaAccessGranted == true) {
            entrant = EntrantType.contractEmployee
            print("\(EntrantType.contractEmployee.rawValue) is valid")
            // vendor
        } else if (isVendor == true) {
            entrant = EntrantType.vendor
            print("\(EntrantType.vendor.rawValue) is valid")
        }
        
        return entrant
        
    }
}




let contractEmployee = ContractEmployeeSource.init(isManager: false, isVendor: false, amusementAreaAccessGranted: true, kitchenAreaAccessGranted: true, maintenanceAreaAccessGranted: false, officeAreaAccessGranted: false, rideControlAreaAccessGranted: false, rideAccessGranted: false, skipLineGranted: false, youngEnough: false, oldEnough: false, todayYourBirthday: false, doYouGetDiscount: false)

let contactEmployeePermissions = [contractEmployee.isManager, contractEmployee.isVendor, contractEmployee.amusementAreaAccessGranted, contractEmployee.kitchenAreaAccessGranted, contractEmployee.maintenanceAreaAccessGranted, contractEmployee.officeAreaAccessGranted, contractEmployee.rideControlAreaAccessGranted, contractEmployee.rideAccessGranted, contractEmployee.skipLineGranted, contractEmployee.youngEnough, contractEmployee.oldEnough, contractEmployee.todayYourBirthday, contractEmployee.doYouGetDiscount]














