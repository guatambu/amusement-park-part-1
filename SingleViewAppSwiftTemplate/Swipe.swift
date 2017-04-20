//
//  SwipeSource.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Kelly Johnson on 4/20/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation

protocol Swipeable {
    var areaAccessGranted: Bool { get set }
    var rideAccessGranted: Bool { get set }
    var skipLineGranted: Bool { get set }
    var youngEnough: Bool { get }
    var todayYourBirthday: Bool { get }
    var doYouGetDiscount: Bool { get set }
    
    func Swipe()
}

class Swipe: Swipeable {
    
    var areaAccessGranted: Bool
    var rideAccessGranted: Bool
    var skipLineGranted: Bool
    var youngEnough: Bool
    var todayYourBirthday: Bool
    var doYouGetDiscount: Bool
    
    init(areaAccessGranted: Bool,
         rideAccessGranted: Bool,
         skipLineGranted: Bool,
         youngEnough: Bool,
         todayYourBirthday: Bool,
         doYouGetDiscount: Bool) {
        
        self.areaAccessGranted = areaAccessGranted
        self.rideAccessGranted = rideAccessGranted
        self.skipLineGranted = skipLineGranted
        self.youngEnough = youngEnough
        self.todayYourBirthday = todayYourBirthday
        self.doYouGetDiscount = doYouGetDiscount
    }
    
    func Swipe() {
        <#code#>
    }
}
