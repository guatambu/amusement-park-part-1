//
//  SeasonPassGuestSource.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Michael Guatambu Davis on 4/20/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation


struct GuestSeasonPassSource: EntrantTypeable {
    
        let amusementAreaAccess: Bool
        let allRidesAccess: Bool
        let skipLines: Bool
        let foodDiscount: Double
        let merchDiscount: Double
        let birthday: String
        let firstName: String
        let lastName: String
        let streetAddress: String
        let city: String
        let state: String
        let zipCode: Int
    
}
