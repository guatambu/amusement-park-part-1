//
//  HourlyRideSerivcesSource.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Michael Guatambu Davis on 4/19/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation


struct HourlyRideSerivcesSource: EntrantTypeable {
    
    var amusementAreaAccess: Bool
    var allRidesAccess: Bool
    var rideControlAreaAccess: Bool = true
    var foodDiscount: Double
    var merchDiscount: Double
    var birthday: String
    var firstName: String
    var lastName: String
    var streetAddress: String
    var city: String
    var state: String
    var zipCode: Int
    var socialSecurityNumber: String
    
}
