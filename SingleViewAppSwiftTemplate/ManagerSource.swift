//
//  ManagerSource.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Michael Guatambu Davis on 4/14/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation

// getting the ball rolling

struct ManagerSource {
    var managerTier = [ManagerType.shift, ManagerType.senior, ManagerType.general]
    var areaAccess = [AreaAccess.amusement, AreaAccess.kitchen, AreaAccess.maintenance, AreaAccess.office, AreaAccess.rideControl]
    var discountFood = "\(DiscountAmount.twentyfive.rawValue) \(DiscountAccess.food.rawValue)"
    var discountMerch = "\(DiscountAmount.twentyfive.rawValue) \(DiscountAccess.merch.rawValue)"
    var rideAccess = RideAccess.all
    var requiredInfoType = RequiredInformationType.personal
    var requiredInfo = [CollectedData.firstName, CollectedData.lastName, CollectedData.street, CollectedData.city, CollectedData.state, CollectedData.zip, CollectedData.ssn, CollectedData.birthdate, CollectedData.managementTier]
    
}
