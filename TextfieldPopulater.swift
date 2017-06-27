//
//  TextfieldPopulater.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Michael Guatambu Davis on 6/27/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

/*

import Foundation
import UIKit


class TextfieldPopulater {

    var counter = 0

    func increment () {
        counter += 1
    }

    func textFieldPopulater () {
        
        
        if counter == 0 {
            // basic employee
            
            dateOfBirth.alpha = 1.0
            socialSecurityNumber.alpha = 1.0
            projectNumber.alpha = 0.2
            firstName.alpha = 1.0
            lastName.alpha = 1.0
            company.alpha = 0.2
            streetAddress.alpha = 1.0
            city.alpha = 1.0
            state.alpha = 1.0
            zipCode.alpha = 1.0
            
            contractorNavButton.isSelected = false
            guestNavButton.isSelected = false
            employeeNavButton.isSelected = true
            managerNavButton.isSelected = false
            vendorNavButton.isSelected = false
            
            subNavOption1.setTitle(EntrantTypeSubNav.hourlyFood.rawValue, for: .normal)
            subNavOption2.setTitle(EntrantTypeSubNav.hourlyRide.rawValue, for: .normal)
            subNavOption3.setTitle(EntrantTypeSubNav.hourlyMaintenance.rawValue, for: .normal)
            subNavOption4.isHidden = true
            subNavOption5.isHidden = true
            
            subNavOption1.isSelected = true
            
            dateOfBirth.text = "09/22/1990"
            socialSecurityNumber.text = "123-23-7890"
            firstName.text = "dan"
            lastName.text = "hardy"
            streetAddress.text = "1919 nowheres dr."
            city.text = "whoville"
            state.text = "CA"
            zipCode.text = "01988"
            
            
            
        } else if counter == 1 {
            // child guest
            
            dateOfBirth.alpha = 1.0
            socialSecurityNumber.alpha = 0.2
            projectNumber.alpha = 0.2
            firstName.alpha = 0.2
            lastName.alpha = 0.2
            company.alpha = 0.2
            streetAddress.alpha = 0.2
            city.alpha = 0.2
            state.alpha = 0.2
            zipCode.alpha = 0.2
            
            contractorNavButton.isSelected = false
            guestNavButton.isSelected = true
            employeeNavButton.isSelected = false
            managerNavButton.isSelected = false
            vendorNavButton.isSelected = false
            
            subNavOption1.setTitle(EntrantTypeSubNav.child.rawValue, for: .normal)
            subNavOption2.setTitle(EntrantTypeSubNav.adult.rawValue, for: .normal)
            subNavOption3.setTitle(EntrantTypeSubNav.senior.rawValue, for: .normal)
            subNavOption4.setTitle(EntrantTypeSubNav.vip.rawValue, for: .normal)
            subNavOption5.setTitle(EntrantTypeSubNav.seasonPass.rawValue, for: .normal)
            
            subNavOption4.isHidden = false
            subNavOption5.isHidden = false
            
            subNavOption1.isSelected = true
            subNavOption2.isSelected = false
            subNavOption3.isSelected = false
            subNavOption4.isSelected = false
            subNavOption5.isSelected = false
            
            dateOfBirth.text = "11/12/2013"
            socialSecurityNumber.text = ""
            firstName.text = ""
            lastName.text = ""
            streetAddress.text = ""
            city.text = ""
            state.text = ""
            zipCode.text = ""
            
            
            
        } else if counter == 2 {
            // senior guest
            
            dateOfBirth.alpha = 1.0
            socialSecurityNumber.alpha = 0.2
            projectNumber.alpha = 0.2
            firstName.alpha = 1.0
            lastName.alpha = 1.0
            company.alpha = 0.2
            streetAddress.alpha = 0.2
            city.alpha = 0.2
            state.alpha = 0.2
            zipCode.alpha = 0.2
            
            
            contractorNavButton.isSelected = false
            guestNavButton.isSelected = true
            employeeNavButton.isSelected = false
            managerNavButton.isSelected = false
            vendorNavButton.isSelected = false
            
            subNavOption1.isSelected = false
            subNavOption2.isSelected = false
            subNavOption3.isSelected = true
            subNavOption4.isSelected = false
            subNavOption5.isSelected = false
            
            dateOfBirth.text = "01/19/1952"
            socialSecurityNumber.text = ""
            firstName.text = "randall"
            lastName.text = "kim"
            streetAddress.text = ""
            city.text = ""
            state.text = ""
            zipCode.text = ""
            
            
            
        } else if counter == 3 {
            // vendor
            
            dateOfBirth.alpha = 1.0
            socialSecurityNumber.alpha = 0.2
            projectNumber.alpha = 0.2
            firstName.alpha = 1.0
            lastName.alpha = 1.0
            company.alpha = 1.0
            streetAddress.alpha = 0.2
            city.alpha = 0.2
            state.alpha = 0.2
            zipCode.alpha = 0.2
            
            contractorNavButton.isSelected = false
            guestNavButton.isSelected = false
            employeeNavButton.isSelected = false
            managerNavButton.isSelected = false
            vendorNavButton.isSelected = true
            
            subNavOption1.setTitle(Vendors.acme.rawValue, for: .normal)
            subNavOption2.setTitle(Vendors.orkin.rawValue, for: .normal)
            subNavOption3.setTitle(Vendors.fedex.rawValue, for: .normal)
            subNavOption4.setTitle(Vendors.nwElectrical.rawValue, for: .normal)
            
            subNavOption4.isHidden = false
            subNavOption5.isHidden = true
            
            subNavOption1.isSelected = false
            subNavOption2.isSelected = true
            subNavOption3.isSelected = false
            subNavOption4.isSelected = false
            subNavOption5.isSelected = false
            
            dateOfBirth.text = "08/28/1994"
            socialSecurityNumber.text = ""
            firstName.text = "bira"
            lastName.text = "almeida"
            company.text = "Orkin"
            streetAddress.text = ""
            city.text = ""
            state.text = ""
            zipCode.text = ""
            
            
            
        } else if counter == 4 {
            // contractor
            
            dateOfBirth.alpha = 1.0
            socialSecurityNumber.alpha = 1.0
            projectNumber.alpha = 1.0
            firstName.alpha = 1.0
            lastName.alpha = 1.0
            company.alpha = 0.2
            streetAddress.alpha = 1.0
            city.alpha = 1.0
            state.alpha = 1.0
            zipCode.alpha = 1.0
            
            contractorNavButton.isSelected = true
            guestNavButton.isSelected = false
            employeeNavButton.isSelected = false
            managerNavButton.isSelected = false
            vendorNavButton.isSelected = false
            
            subNavOption1.setTitle(ContractorSubNav.proj1001.rawValue, for: .normal)
            subNavOption2.setTitle(ContractorSubNav.proj1002.rawValue, for: .normal)
            subNavOption3.setTitle(ContractorSubNav.proj1003.rawValue, for: .normal)
            subNavOption4.setTitle(ContractorSubNav.proj2001.rawValue, for: .normal)
            subNavOption5.setTitle(ContractorSubNav.proj2002.rawValue, for: .normal)
            
            subNavOption4.isHidden = false
            subNavOption5.isHidden = false
            
            subNavOption1.isSelected = false
            subNavOption2.isSelected = false
            subNavOption3.isSelected = false
            subNavOption4.isSelected = false
            subNavOption5.isSelected = true
            
            dateOfBirth.text = "06/12/186"
            socialSecurityNumber.text = "321-76-5678"
            projectNumber.text = "2002"
            firstName.text = "daniel"
            lastName.text = "curio"
            company.text = ""
            streetAddress.text = "1615 n. nowheres ave."
            city.text = "whoville"
            state.text = "CA"
            zipCode.text = "27365"
            
            
            
        } else if  counter == 5 {
            // manager
            
            dateOfBirth.alpha = 1.0
            socialSecurityNumber.alpha = 1.0
            projectNumber.alpha = 0.2
            firstName.alpha = 1.0
            lastName.alpha = 1.0
            company.alpha = 0.2
            streetAddress.alpha = 1.0
            city.alpha = 1.0
            state.alpha = 1.0
            zipCode.alpha = 1.0
            
            contractorNavButton.isSelected = false
            guestNavButton.isSelected = false
            employeeNavButton.isSelected = false
            managerNavButton.isSelected = true
            vendorNavButton.isSelected = false
            
            subNavOption1.setTitle(ManagerType.shift.rawValue, for: .normal)
            subNavOption2.setTitle(ManagerType.general.rawValue, for: .normal)
            subNavOption3.setTitle(ManagerType.senior.rawValue, for: .normal)
            
            subNavOption4.isHidden = true
            subNavOption5.isHidden = true
            
            subNavOption1.isSelected = false
            subNavOption2.isSelected = true
            subNavOption3.isSelected = false
            subNavOption4.isSelected = false
            subNavOption5.isSelected = false
            
            dateOfBirth.text = "11/12/83"
            socialSecurityNumber.text = "789-45-1234"
            projectNumber.text = ""
            firstName.text = "mindy"
            lastName.text = "malik"
            company.text = ""
            streetAddress.text = "1919 nowheres dr."
            city.text = "whoville"
            state.text = "CA"
            zipCode.text = "01988"
            
            
            
        } else {
            counter = -1
            
            dateOfBirth.alpha = 1.0
            socialSecurityNumber.alpha = 1.0
            projectNumber.alpha = 1.0
            firstName.alpha = 1.0
            lastName.alpha = 1.0
            company.alpha = 1.0
            streetAddress.alpha = 1.0
            city.alpha = 1.0
            state.alpha = 1.0
            zipCode.alpha = 1.0
            
            contractorNavButton.isSelected = false
            guestNavButton.isSelected = false
            employeeNavButton.isSelected = false
            managerNavButton.isSelected = false
            vendorNavButton.isSelected = false
            
            subNavOption1.isSelected = false
            subNavOption2.isSelected = false
            subNavOption3.isSelected = false
            subNavOption4.isSelected = false
            subNavOption5.isSelected = false
            
            dateOfBirth.text = ""
            socialSecurityNumber.text = ""
            projectNumber.text = ""
            firstName.text = ""
            lastName.text = ""
            company.text = ""
            streetAddress.text = ""
            city.text = ""
            state.text = ""
            zipCode.text = ""
            
        }
        
    }
}
 
*/
