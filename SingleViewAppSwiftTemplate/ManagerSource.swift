//
//  ManagerSource.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Michael Guatambu Davis on 4/14/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation

// getting the ball rolling

class ManagerSource {
    let areaAccess:Bool
    let rideAccess: Bool
    let discountAccess: Bool
    let requiredPersonalInfo: Bool
    

    
    init(areaAccess: Bool, rideAccess: Bool, discountAccess: Bool, requiredPersonalInfo: Bool){
        self.areaAccess = areaAccess
        self.rideAccess = rideAccess
        self.discountAccess = discountAccess
        self.requiredPersonalInfo = requiredPersonalInfo
    
    }
    
}
