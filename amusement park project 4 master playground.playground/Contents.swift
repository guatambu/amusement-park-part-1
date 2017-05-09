import UIKit
import Foundation

enum AreaAccess: String {
    case amusement = "Amusement Areas"
    case kitchen = "Kitchen Areas"
    case rideControl =  "Ride Control Areas"
    case maintenance = "Maintenance Areas"
    case office = "Office Areas"
    
}

enum CollectedData: String {
    case firstName = "First Name"
    case lastName = "Last Name"
    case vendorCompany = "Vendor Company"
    case street = "Street Address"
    case city = "City"
    case state = "State"
    case zip = "ZIP Code"
    case ssn = "Social Security Number"
    case birthdate = "Date of Birth"
    case visitDate = "Date of Visit"
    case managementTier = "Management Tier"
    case projectNumber = "Project Number"
}

enum DiscountAccess: String {
    case none = "none"
    case food = "Discount on Food"
    case merch = "Discount on Merchandise"
}

enum DiscountAmount: String {
    case none = "none"
    case ten = "10%"
    case fifteen = "15%"
    case twenty = "20%"
    case twentyfive = "25%"
}

enum EntrantType: String {
    case classic = "Classic Guest"
    case child = "Free Child Guest"
    case seasonPass = "Season Pass Guest"
    case senior = "Senior Guest"
    case vip = "VIP Guest"
    case hourlyFood = "Hourly Employee - Food Services"
    case hourlyRide = "Hourly Employee - Ride Services"
    case hourlyMaintenance = "Hourly Employee - Maintenance"
    case manager = "Manager"
    case contractEmployee = "Contract Employee"
    case vendor = "Vendor"
}

enum ManagerType: String {
    case shift = "Shift"
    case general = "General"
    case senior = "Senior"
}

enum RequiredInformation: String {
    case none = "none"
    case personal = "Personal Information"
    case business = "Business Information"
}

enum RidePrivilege: String {
    case all = "Access All Rides"
    case skip = "Skip All Ride Lines"
    case deferToRules = "See Entrant Access Rules"
}


// protocol

protocol EntrantTypeable {
    
    var areaAccess: [AreaAccess] { get set }
    var ridePrivileges: [RidePrivilege] { get set }
    var discountAccess: [DiscountAccess] { get set }
    var discountAmount: [DiscountAmount] { get set }
    var requiredInformation: [RequiredInformation] { get set }
    
}

// base class

class Person: EntrantTypeable {
    
    var areaAccess: [AreaAccess]
    var ridePrivileges: [RidePrivilege]
    var discountAccess: [DiscountAccess]
    var discountAmount: [DiscountAmount]
    var requiredInformation: [RequiredInformation]
    
    init(
        areaAccess: [AreaAccess],
        ridePrivileges: [RidePrivilege],
        discountAccess: [DiscountAccess],
        discountAmount: [DiscountAmount],
        requiredInformation: [RequiredInformation]
        )
    {
        self.areaAccess = areaAccess
        self.ridePrivileges = ridePrivileges
        self.discountAccess = discountAccess
        self.discountAmount = discountAmount
        self.requiredInformation = requiredInformation
    }
}


// subclasses

class GuestClassic: Person {
    
    override init (
        areaAccess: [AreaAccess],
        ridePrivileges: [RidePrivilege],
        discountAccess: [DiscountAccess],
        discountAmount: [DiscountAmount],
        requiredInformation: [RequiredInformation]
        )
    {
        super.init(
            areaAccess: areaAccess,
            ridePrivileges: ridePrivileges,
            discountAccess: discountAccess,
            discountAmount: discountAmount,
            requiredInformation: requiredInformation
        )
        self.areaAccess = [.amusement]
        self.ridePrivileges = [.all]
    }
}



class GuestChild: GuestClassic {
    
    var dateOfBirth: String
    
    init (
        areaAccess: [AreaAccess],
        ridePrivileges: [RidePrivilege],
        discountAccess: [DiscountAccess],
        discountAmount: [DiscountAmount],
        requiredInformation: [RequiredInformation],
        dateOfBirth: String
        )
    {
        self.dateOfBirth = dateOfBirth
        super.init(
            areaAccess: areaAccess,
            ridePrivileges: ridePrivileges,
            discountAccess: discountAccess,
            discountAmount: discountAmount,
            requiredInformation: requiredInformation
        )
        self.requiredInformation = [.personal]
        
        
    }
}


class GuestVIP: GuestClassic {
    
    override init (
        areaAccess: [AreaAccess],
        ridePrivileges: [RidePrivilege],
        discountAccess: [DiscountAccess],
        discountAmount: [DiscountAmount],
        requiredInformation: [RequiredInformation]
        )
    {
        super.init(
            areaAccess: areaAccess,
            ridePrivileges: ridePrivileges,
            discountAccess: discountAccess,
            discountAmount: discountAmount,
            requiredInformation: requiredInformation
        )
        self.areaAccess = [.amusement]
        self.ridePrivileges = [.all, .skip]
        self.discountAccess = [.food, .merch]
        self.discountAmount = [.ten, .twenty]
        self.requiredInformation = [.none]
    }
    
}


class GuestSenior: GuestChild {
    
    var firstName: String
    var lastName: String
    
    init (
        areaAccess: [AreaAccess],
        ridePrivileges: [RidePrivilege],
        discountAccess: [DiscountAccess],
        discountAmount: [DiscountAmount],
        requiredInformation: [RequiredInformation],
        dateOfBirth: String,
        firstName: String,
        lastName: String
        )
    {
        self.firstName = firstName
        self.lastName = lastName
        super.init(
            areaAccess: areaAccess,
            ridePrivileges: ridePrivileges,
            discountAccess: discountAccess,
            discountAmount: discountAmount,
            requiredInformation: requiredInformation,
            dateOfBirth: dateOfBirth
        )
        self.ridePrivileges = [.all, .skip]
        self.discountAmount = [.ten, .ten]
        
    }
}


class GuestSeasonPass: GuestSenior {
    
    var streetAddress: String
    var city: String
    var state: String
    var zipCode: Int
    
    init (
        areaAccess: [AreaAccess],
        ridePrivileges: [RidePrivilege],
        discountAccess: [DiscountAccess],
        discountAmount: [DiscountAmount],
        requiredInformation: [RequiredInformation],
        dateOfBirth: String,
        firstName: String,
        lastName: String,
        streetAddress: String,
        city: String,
        state: String,
        zipCode: Int
        
        )
    {
        self.streetAddress = streetAddress
        self.city = city
        self.state = state
        self.zipCode = zipCode
        super.init(
            areaAccess: areaAccess,
            ridePrivileges: ridePrivileges,
            discountAccess: discountAccess,
            discountAmount: discountAmount,
            requiredInformation: requiredInformation,
            dateOfBirth: dateOfBirth,
            firstName: firstName,
            lastName: lastName
        )
        self.discountAmount = [.ten, .twenty]
        
    }
}


class HourlyFoodEmployee: GuestSeasonPass {
    
    var socialSecurityNumber: String
    
    init (
        areaAccess: [AreaAccess],
        ridePrivileges: [RidePrivilege],
        discountAccess: [DiscountAccess],
        discountAmount: [DiscountAmount],
        requiredInformation: [RequiredInformation],
        dateOfBirth: String,
        firstName: String,
        lastName: String,
        streetAddress: String,
        city: String,
        state: String,
        zipCode: Int,
        socialSecurityNumber: String
        )
    {
        self.socialSecurityNumber = socialSecurityNumber
        super.init(
            areaAccess: areaAccess,
            ridePrivileges: ridePrivileges,
            discountAccess: discountAccess,
            discountAmount: discountAmount,
            requiredInformation: requiredInformation,
            dateOfBirth: dateOfBirth,
            firstName: firstName,
            lastName: lastName,
            streetAddress: streetAddress,
            city: city,
            state: state,
            zipCode: zipCode
        )
        self.areaAccess = [.amusement, .kitchen]
        self.discountAmount = [.fifteen, .twentyfive]
        
    }
}


class HourlyMaintenanceEmployee: HourlyFoodEmployee {
    
    override init (
        areaAccess: [AreaAccess],
        ridePrivileges: [RidePrivilege],
        discountAccess: [DiscountAccess],
        discountAmount: [DiscountAmount],
        requiredInformation: [RequiredInformation],
        dateOfBirth: String,
        firstName: String,
        lastName: String,
        streetAddress: String,
        city: String,
        state: String,
        zipCode: Int,
        socialSecurityNumber: String
        )
    {
        super.init(
            areaAccess: areaAccess,
            ridePrivileges: ridePrivileges,
            discountAccess: discountAccess,
            discountAmount: discountAmount,
            requiredInformation: requiredInformation,
            dateOfBirth: dateOfBirth,
            firstName: firstName,
            lastName: lastName,
            streetAddress: streetAddress,
            city: city,
            state: state,
            zipCode: zipCode,
            socialSecurityNumber: socialSecurityNumber
        )
        self.areaAccess = [.amusement, .kitchen, .maintenance, .rideControl]
        
    }
}


class HourlyRideServicesEmployee: HourlyFoodEmployee {
    
    override init (
        areaAccess: [AreaAccess],
        ridePrivileges: [RidePrivilege],
        discountAccess: [DiscountAccess],
        discountAmount: [DiscountAmount],
        requiredInformation: [RequiredInformation],
        dateOfBirth: String,
        firstName: String,
        lastName: String,
        streetAddress: String,
        city: String,
        state: String,
        zipCode: Int,
        socialSecurityNumber: String
        )
    {
        super.init(
            areaAccess: areaAccess,
            ridePrivileges: ridePrivileges,
            discountAccess: discountAccess,
            discountAmount: discountAmount,
            requiredInformation: requiredInformation,
            dateOfBirth: dateOfBirth,
            firstName: firstName,
            lastName: lastName,
            streetAddress: streetAddress,
            city: city,
            state: state,
            zipCode: zipCode,
            socialSecurityNumber: socialSecurityNumber
        )
        self.areaAccess = [.amusement, .rideControl]
        
    }
}


class ManagerEmployee: HourlyFoodEmployee {
    
    var managementTier: [ManagerType]
    
    init (
        areaAccess: [AreaAccess],
        ridePrivileges: [RidePrivilege],
        discountAccess: [DiscountAccess],
        discountAmount: [DiscountAmount],
        requiredInformation: [RequiredInformation],
        dateOfBirth: String,
        firstName: String,
        lastName: String,
        streetAddress: String,
        city: String,
        state: String,
        zipCode: Int,
        socialSecurityNumber: String,
        managementTier: [ManagerType]
        )
    {
        self.managementTier = managementTier
        super.init(
            areaAccess: areaAccess,
            ridePrivileges: ridePrivileges,
            discountAccess: discountAccess,
            discountAmount: discountAmount,
            requiredInformation: requiredInformation,
            dateOfBirth: dateOfBirth,
            firstName: firstName,
            lastName: lastName,
            streetAddress: streetAddress,
            city: city,
            state: state,
            zipCode: zipCode,
            socialSecurityNumber: socialSecurityNumber
        )
        self.areaAccess = [.amusement, .kitchen, .maintenance, .office, .rideControl]
        self.discountAmount = [.twentyfive, .twentyfive]
        
    }
}


class ContractEmployee: HourlyFoodEmployee {
    
    var projectNumber: Int
    
    init(
        areaAccess: [AreaAccess],
        ridePrivileges: [RidePrivilege],
        discountAccess: [DiscountAccess],
        discountAmount: [DiscountAmount],
        requiredInformation: [RequiredInformation],
        dateOfBirth: String,
        firstName: String,
        lastName: String,
        streetAddress: String,
        city: String,
        state: String,
        zipCode: Int,
        socialSecurityNumber: String,
        projectNumber: Int
        )
    {
        self.projectNumber = projectNumber
        super.init(
            areaAccess: areaAccess,
            ridePrivileges: ridePrivileges,
            discountAccess: discountAccess,
            discountAmount: discountAmount,
            requiredInformation: requiredInformation,
            dateOfBirth: dateOfBirth,
            firstName: firstName,
            lastName: lastName,
            streetAddress: streetAddress,
            city: city,
            state: state,
            zipCode: zipCode,
            socialSecurityNumber: socialSecurityNumber
        )
        self.ridePrivileges = [.deferToRules]
        self.discountAccess = [.none]
        self.discountAmount = [.none]
        
    }
}


class Vendor: GuestSenior {
    
    var vendorCompany: String
    var dateOfVisit: String
    
    init (
        areaAccess: [AreaAccess],
        ridePrivileges: [RidePrivilege],
        discountAccess: [DiscountAccess],
        discountAmount: [DiscountAmount],
        requiredInformation: [RequiredInformation],
        dateOfBirth: String,
        firstName: String,
        lastName: String,
        vendorCompany: String,
        dateOfVisit: String
        )
    {
        self.vendorCompany = vendorCompany
        self.dateOfVisit = dateOfVisit
        super.init(
            areaAccess: areaAccess,
            ridePrivileges: ridePrivileges,
            discountAccess: discountAccess,
            discountAmount: discountAmount,
            requiredInformation: requiredInformation,
            dateOfBirth: dateOfBirth,
            firstName: firstName,
            lastName: lastName
        )
        
        self.ridePrivileges = [.deferToRules]
        self.discountAccess = [.none]
        self.discountAmount = [.none]
        
    }
}






// swipe method checks

func swipeAreaAccess(check entrant: GuestClassic) {
    
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


func swipeRidePrivileges(check entrant: GuestClassic) {
    
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


func swipeDiscount(check entrant: GuestClassic) {
    
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


func swipeRequiredInfo(check entrant: GuestClassic) {
    
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








// test cases initialized

// guests

//let newGuest = GuestClassic

/*let classicGuest = GuestClassic(areaAccess: [.amusement], ridePrivileges: [.all], discountAccess: [.none], discountAmount: [.none], requiredInformation: [.none])*/

/*var childGuest = GuestChild(areaAccess: [.amusement], ridePrivileges: [.all], discountAccess: [.none], discountAmount: [.none], requiredInformation: [.personal]/*, dateOfBirth: "07/08/2013"*/)*/

/*let vip = GuestVIP(areaAccess: [.amusement], ridePrivileges: [.all, .skip], discountAccess: [.food, .merch], discountAmount: [.ten, .twenty], requiredInformation: [.none])*/


// employees

/*var foodServicesWorker = HourlyFoodEmployee(areaAccess: [.amusement, .kitchen], ridePrivileges: [.all], discountAccess: [.food, .merch], discountAmount: [.fifteen, .twentyfive], requiredInformation: [.personal]/*, dateOfBirth: "09/12/1987", firstName: "harry", lastName: "stevens", streetAddress: "442 buckled ave.", city: "harrisburg", state: "VA", zipCode: 01459, socialSecurityNumber: "899-234-4532"*/)
 
 var maintenanceWorker = HourlyMaintenanceEmployee(areaAccess: [.amusement, .kitchen, .maintenance, .rideControl], ridePrivileges: [.all], discountAccess: [.food, .merch], discountAmount: [.fifteen, .twentyfive], requiredInformation: [.personal]/*, dateOfBirth: "09/08/1990", firstName: "Daniel", lastName: "Smith", streetAddress: "123 my street", city: "towntown", state: "CA", zipCode: 91203, socialSecurityNumber: "552-041-9412"*/)
 
 var rideServices = HourlyRideServicesEmployee(areaAccess: [.amusement, .rideControl], ridePrivileges: [.all], discountAccess: [.food, .merch], discountAmount: [.fifteen, .twentyfive], requiredInformation: [.personal]/*, dateOfBirth: "05/25/2000", firstName: "kevin", lastName: "grant", streetAddress: "98 round the corner ave.", city: "paradise" , state: "CA", zipCode: 98023, socialSecurityNumber: "654-234-0987"*/)
 
 var shiftManager = ManagerEmployee(areaAccess: [.amusement, .kitchen, .maintenance, .office, .rideControl], ridePrivileges: [.all], discountAccess: [.food, .merch], discountAmount: [.twentyfive, .twentyfive], requiredInformation: [.personal], /*dateOfBirth: "12/23/1999", firstName: "robyn", lastName: "henderson", streetAddress: "6723 who knows where dr.", city: "township", state: "CA", zipCode: 91234, socialSecurityNumber: "123-654-9807", */managementTier: [.shift])
 
 
 // erroneous test instances
 
 var errorClassicGuest = GuestClassic(areaAccess: [], ridePrivileges: [.all], discountAccess: [.none], discountAmount: [.none], requiredInformation: [.none])
 
 var errorVIP = GuestVIP(areaAccess: [.amusement], ridePrivileges: [], discountAccess: [.food, .merch], discountAmount: [.ten, .twenty], requiredInformation: [.none])
 
 var seniorGuest = GuestSenior(areaAccess: [.amusement], ridePrivileges: [.all, .skip], discountAccess: [.food, .merch], discountAmount: [.ten, .ten], requiredInformation: [.personal]/*, dateOfBirth: nil, firstName: "stanley", lastName: "johnson"*/)
 
 var errorFoodWorker = HourlyFoodEmployee(areaAccess: [.amusement, .kitchen], ridePrivileges: [.all], discountAccess: [.food, .merch], discountAmount: [.fifteen, .twentyfive], requiredInformation: [.personal]/*, dateOfBirth: nil, firstName: "frank", lastName: "abbot", streetAddress: "368 tommy hill ln.", city: "aroun the way", state: "CA", zipCode: 90026, socialSecurityNumber: "324-564-9786"*/)
 
 
 /*var newManager = ManagerEmployee(areaAccess: [.amusement, .kitchen, .maintenance, .office, .rideControl], ridePrivileges: [.all], discountAccess: [.food, .merch], discountAmount: [.twentyfive, .twentyfive], requiredInformation: [.personal], managementTier: [.general])
 
 */
 
 newManager.dateOfBirth = "09/12/1998"
 newManager.firstName = "martin"
 newManager.lastName = "lawrence"
 newManager.streetAddress = "123 my street"
 newManager.city = "township"
 newManager.state = "CA"
 newManager.socialSecurityNumber = "555-555-5555"
 
 print(newManager.managementTier)
 */


// testing

/*
 
 // employees
 
 swipeAreaAccess(check: shiftManager)
 
 swipeRidePrivileges(check: shiftManager)
 
 swipeDiscount(check: shiftManager)
 
 swipeRequiredInfo(check: shiftManager)
 
 
 
 
 
 swipeAreaAccess(check: rideServices)
 
 swipeRidePrivileges(check: rideServices)
 
 swipeDiscount(check: rideServices)
 
 swipeRequiredInfo(check: rideServices)
 
 
 
 
 swipeAreaAccess(check: maintenanceWorker)
 
 swipeRidePrivileges(check: maintenanceWorker)
 
 swipeDiscount(check: maintenanceWorker)
 
 swipeRequiredInfo(check: maintenanceWorker)
 
 
 
 
 swipeAreaAccess(check: foodServicesWorker)
 
 swipeRidePrivileges(check: foodServicesWorker)
 
 swipeDiscount(check: foodServicesWorker)
 
 swipeRequiredInfo(check: foodServicesWorker)
 
 
 
 
 // guests
 
 
 swipeAreaAccess(check: vip)
 
 swipeRidePrivileges(check: vip)
 
 swipeDiscount(check: vip)
 
 swipeRequiredInfo(check: vip)
 
 
 
 
 swipeAreaAccess(check: childGuest)
 
 swipeRidePrivileges(check: childGuest)
 
 swipeDiscount(check: childGuest)
 
 swipeRequiredInfo(check: childGuest)
 
 
 
 
 
 swipeAreaAccess(check: classicGuest)
 
 swipeRidePrivileges(check: classicGuest)
 
 swipeDiscount(check: classicGuest)
 
 swipeRequiredInfo(check: classicGuest)
 
 
 
 
 swipeAreaAccess(check: errorClassicGuest)
 
 swipeRidePrivileges(check: errorClassicGuest)
 
 swipeDiscount(check: errorClassicGuest)
 
 swipeRequiredInfo(check: errorClassicGuest)
 
 
 
 
 swipeAreaAccess(check: errorVIP)
 
 swipeRidePrivileges(check: errorVIP)
 
 swipeDiscount(check: errorVIP)
 
 swipeRequiredInfo(check: errorVIP)
 
 */


/*
 swipeAreaAccess(check: errorFoodWorker)
 
 swipeRidePrivileges(check: errorFoodWorker)
 
 swipeDiscount(check: errorFoodWorker)
 
 swipeRequiredInfo(check: errorFoodWorker)
 
 */




// Init & Handle Error



