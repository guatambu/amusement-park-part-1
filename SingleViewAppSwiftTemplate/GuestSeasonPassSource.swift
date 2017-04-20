//
//  SeasonPassGuestSource.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Kelly Johnson on 4/20/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation

struct SeasonPassGuestSource {
    
    var areaAccess = AreaAccess.amusement
    var discountFood = "\(DiscountAmount.ten.rawValue) \(DiscountAccess.food.rawValue)"
    var discountMerch = "\(DiscountAmount.twenty.rawValue) \(DiscountAccess.merch.rawValue)"
    var rideAccess = [RideAccess.all, RideAccess.skip]
    var requiredInfoType = RequiredInformationType.personal
    var requiredInfo = [CollectedData.firstName, CollectedData.lastName, CollectedData.street, CollectedData.city, CollectedData.state, CollectedData.zip, CollectedData.birthdate]

}
