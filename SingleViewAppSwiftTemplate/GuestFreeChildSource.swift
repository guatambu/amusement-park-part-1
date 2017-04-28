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
    var birthday: String
    
    init(amusementAreaAccess: Bool, allRidesAccess: Bool, birthday: String) {
        self.birthday = birthday
        super.init(
            amusementAreaAccess: amusementAreaAccess,
            allRidesAccess: allRidesAccess
        )
    }
    
}
