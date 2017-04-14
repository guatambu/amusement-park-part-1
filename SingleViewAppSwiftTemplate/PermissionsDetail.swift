//
//  PermissionsDetail.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Kelly Johnson on 4/14/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation

// getting the ball rolling

enum PermissionsDetail {
    
    
    case areas(String, String, String, String)
    // kitchen, rideControl, maintenance, office
    
    case foodDiscount(Double, Double, Double)
    //0.25, 0.15, 0.10
    
    case merchDiscount(Double, Double)
    //0.25, 0.20
    
     case ridesAccess(String, String)
    //all, skipLine
    
     
     case requiredInfo(String, String, String, String,String, String, String, String)
    //firstName, lastName, streetAddress, city, state, zipCode, socialSecurityNumber, dateOfBirth
     
     case managementTier(String, String, String)
    //shift, general, senior
    
}

let areaPermission = PermissionsDetail.areas("kitchen", "ride control", "maintenance", "office")
let foodDiscounts = PermissionsDetail.foodDiscount(0.25, 0.15, 0.10)
let merchDiscounts = PermissionsDetail.merchDiscount(0.25, 0.20)
let ridesAccess = PermissionsDetail.ridesAccess("all", "skipline")
let requiredInfo = PermissionsDetail.requiredInfo("first name", "last name", "street address", "city", "state", "zip code", "social security number", "date of birth")
let managementTier = PermissionsDetail.managementTier("shift", "general", "senior")
		
