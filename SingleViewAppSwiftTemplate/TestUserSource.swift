//
//  TestUserSource.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Kelly Johnson on 4/21/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation



// test cases initialized

// guests

//let newGuest = GuestClassic

/*
let classicGuest = GuestClassicSource(areaAccess: [.amusement], ridePrivileges: [.all], discountAccess: [.none], discountAmount: [.none], requiredInformation: [.none])

var childGuest = GuestChildSource(areaAccess: [.amusement], ridePrivileges: [.all], discountAccess: [.none], discountAmount: [.none], requiredInformation: [.personal], dateOfBirth: "07/08/2013")

let vip = GuestVIPSource(areaAccess: [.amusement], ridePrivileges: [.all, .skip], discountAccess: [.food, .merch], discountAmount: [.ten, .twenty], requiredInformation: [.none])


// employees

var foodServicesWorker = HourlyFoodEmployeeSource(areaAccess: [.amusement, .kitchen], ridePrivileges: [.all], discountAccess: [.food, .merch], discountAmount: [.fifteen, .twentyfive], requiredInformation: [.personal], dateOfBirth: "09/12/1987", firstName: "harry", lastName: "stevens", streetAddress: "442 buckled ave.", city: "harrisburg", state: "VA", zipCode: 01459, socialSecurityNumber: "899-234-4532")

var maintenanceWorker = HourlyMaintenanceEmployeeSource(areaAccess: [.amusement, .kitchen, .maintenance, .rideControl], ridePrivileges: [.all], discountAccess: [.food, .merch], discountAmount: [.fifteen, .twentyfive], requiredInformation: [.personal], dateOfBirth: "09/08/1990", firstName: "Daniel", lastName: "Smith", streetAddress: "123 my street", city: "towntown", state: "CA", zipCode: 91203, socialSecurityNumber: "552-041-9412")
 
var rideServices = HourlyRideServicesEmployeeSource(areaAccess: [.amusement, .rideControl], ridePrivileges: [.all], discountAccess: [.food, .merch], discountAmount: [.fifteen, .twentyfive], requiredInformation: [.personal], dateOfBirth: "05/25/2000", firstName: "kevin", lastName: "grant", streetAddress: "98 round the corner ave.", city: "paradise" , state: "CA", zipCode: 98023, socialSecurityNumber: "654-234-0987")
 
var shiftManager = ManagerEmployeeSource(areaAccess: [.amusement, .kitchen, .maintenance, .office, .rideControl], ridePrivileges: [.all], discountAccess: [.food, .merch], discountAmount: [.twentyfive, .twentyfive], requiredInformation: [.personal], dateOfBirth: "12/23/1999", firstName: "robyn", lastName: "henderson", streetAddress: "6723 who knows where dr.", city: "township", state: "CA", zipCode: 91234, socialSecurityNumber: "123-654-9807", managementTier: [.shift])
 

 // erroneous test instances
 
 var errorClassicGuest = GuestClassicSource(areaAccess: [], ridePrivileges: [.all], discountAccess: [.none], discountAmount: [.none], requiredInformation: [.none])
 
 var errorVIP = GuestVIPSource(areaAccess: [.amusement], ridePrivileges: [], discountAccess: [.food, .merch], discountAmount: [.ten, .twenty], requiredInformation: [.none])
 
 var seniorGuest = GuestSeniorSource(areaAccess: [.amusement], ridePrivileges: [.all, .skip], discountAccess: [.food, .merch], discountAmount: [.ten, .ten], requiredInformation: [.personal], dateOfBirth: nil, firstName: "stanley", lastName: "johnson")
 
 var errorFoodWorker = HourlyFoodEmployeeSource(areaAccess: [.amusement, .kitchen], ridePrivileges: [.all], discountAccess: [.food, .merch], discountAmount: [.fifteen, .twentyfive], requiredInformation: [.personal], dateOfBirth: nil, firstName: "frank", lastName: "abbot", streetAddress: "368 tommy hill ln.", city: "aroun the way", state: "CA", zipCode: 90026, socialSecurityNumber: "324-564-9786")
 
 
var newManager = ManagerEmployeeSource(areaAccess: [.amusement, .kitchen, .maintenance, .office, .rideControl], ridePrivileges: [.all], discountAccess: [.food, .merch], discountAmount: [.twentyfive, .twentyfive], requiredInformation: [.personal], dateOfBirth: "07/03/1987", firstName: "Chuck", lastName: "Norris", streetAddress: nil, city: "walker", state: "TX", zipCode: 07808, socialSecurityNumber: "123-345-4567", managementTier: [.general])
 

 



// testing


 
 // employees
 
 swipeAreaAccess(check: shiftManager)
 
 swipeRidePrivileges(check: shiftManager)
 
 swipeDiscount(check: shiftManager)
 
 swipeRequiredInfo(check: shiftManager)
 
 
 
 
 
 swipeAreaAccess(check: rideServices)
 
 swipeRidePrivileges(check: rideServices)
 
 swipeDiscount(check: rideServices)
 
 swipeRequiredInfo(check: rideServices)
 
 
 
 
 swipeAreaAccess(check: maintenanceWorker)
 
 swipeRidePrivileges(check: maintenanceWorker)
 
 swipeDiscount(check: maintenanceWorker)
 
 swipeRequiredInfo(check: maintenanceWorker)
 
 
 
 
 swipeAreaAccess(check: foodServicesWorker)
 
 swipeRidePrivileges(check: foodServicesWorker)
 
 swipeDiscount(check: foodServicesWorker)
 
 swipeRequiredInfo(check: foodServicesWorker)
 
 
 
 
 // guests
 
 
 swipeAreaAccess(check: vip)
 
 swipeRidePrivileges(check: vip)
 
 swipeDiscount(check: vip)
 
 swipeRequiredInfo(check: vip)
 
 
 
 
 swipeAreaAccess(check: childGuest)
 
 swipeRidePrivileges(check: childGuest)
 
 swipeDiscount(check: childGuest)
 
 swipeRequiredInfo(check: childGuest)
 
 
 
 
 
 swipeAreaAccess(check: classicGuest)
 
 swipeRidePrivileges(check: classicGuest)
 
 swipeDiscount(check: classicGuest)
 
 swipeRequiredInfo(check: classicGuest)
 
 
 
 
 swipeAreaAccess(check: errorClassicGuest)
 
 swipeRidePrivileges(check: errorClassicGuest)
 
 swipeDiscount(check: errorClassicGuest)
 
 swipeRequiredInfo(check: errorClassicGuest)
 
 
 
 
 swipeAreaAccess(check: errorVIP)
 
 swipeRidePrivileges(check: errorVIP)
 
 swipeDiscount(check: errorVIP)
 
 swipeRequiredInfo(check: errorVIP)
 
 */


/*
 swipeAreaAccess(check: errorFoodWorker)
 
 swipeRidePrivileges(check: errorFoodWorker)
 
 swipeDiscount(check: errorFoodWorker)
 
 swipeRequiredInfo(check: errorFoodWorker)
 
 */


