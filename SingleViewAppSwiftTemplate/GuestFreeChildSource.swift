//
//  GuestFreeChildSource.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Michael Guatambu Davis on 4/19/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation

// Entrant Type: subclassA: tier 2
class GuestFreeChildSource: GuestClassicSource {
    
    var isChild: Bool = true
    var dateOfBirth: String
    
    init(amusementAreaAccess: Bool, allRideAccess: Bool, dateOfBirth: String) {
        self.dateOfBirth = dateOfBirth
        super.init(amusementAreaAccess: amusementAreaAccess, allRidesAccess: allRidesAccess)
    }
    
}
