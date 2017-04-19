//
//  HourlyMaintenance.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Kelly Johnson on 4/19/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation

struct HourlyMaintenanceSource {
    var areaAccess = [AreaAccess.amusement, AreaAccess.kitchen, AreaAccess.maintenance, AreaAccess.rideControl]
    var discountFood = "\(DiscountAmount.fifteen.rawValue) \(DiscountAccess.food.rawValue)"
    var discountMerch = "\(DiscountAmount.twentyfive.rawValue) \(DiscountAccess.merch.rawValue)"
    var rideAccess = RideAccess.all
    var requiredInfoType = RequiredInformationType.personal
    var requiredInfo = [CollectedData.firstName, CollectedData.lastName, CollectedData.street, CollectedData.city, CollectedData.state, CollectedData.zip, CollectedData.ssn, CollectedData.birthdate]

}
