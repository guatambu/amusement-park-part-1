//
//  GuestVIPSource.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Michael Guatambu Davis on 4/19/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation


class GuestVIPSource: GuestClassicSource {
    
    convenience init ()
    {
        self.init(
            areaAccess: [.amusement],
            ridePrivileges: [.all, .skip],
            discountAccess: [.food, .merch],
            discountAmount: [.ten, .twenty],
            requiredInformation: [.none]
        )
        
    }
    
}

// var newUser = GuestVIPSource()




