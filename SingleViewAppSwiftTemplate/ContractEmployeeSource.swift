//
//  ContrctEmployeeSource.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Kelly Johnson on 4/20/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation

struct ContractEmployeeSource {
    
    var areaAccess = [AreaAccess.amusement, AreaAccess.kitchen]
    var discountFood = "none"
    var discountMerch = "none"
    var rideAccess = "see entrant access rules"
    var requiredInfoType = RequiredInformationType.business
    var requiredInfo = [CollectedData.firstName, CollectedData.lastName, CollectedData.street, CollectedData.city, CollectedData.state, CollectedData.zip, CollectedData.ssn, CollectedData.birthdate, CollectedData.projectNumber]
    
}
