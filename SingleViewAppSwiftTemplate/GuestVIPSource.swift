//
//  GuestVIPSource.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Michael Guatambu Davis on 4/19/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation

struct GuestVIPSource {
    var areaAccess = AreaAccess.amusement
    var discountFood = "\(DiscountAmount.ten.rawValue) \(DiscountAccess.food.rawValue)"
    var discountMerch = "\(DiscountAmount.twenty.rawValue) \(DiscountAccess.merch.rawValue)"
    var rideAccess = [RideAccess.all, RideAccess.skip]
    var requiredInfoType = "none"
    var requiredInfo = "none"
}
