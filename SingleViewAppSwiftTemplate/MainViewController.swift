//
//  MainViewController.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Michael Guatambu Davis on 5/24/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

protocol MainViewControllerDelegate: class {
    func entrantPassed(entrant: EntrantTypeable)
}


import UIKit

class MainViewController: UIViewController {
    
    var counter = 0
    var newUser: PersonSource?
    
    weak var delegate: MainViewControllerDelegate?
    
    
    /* Navigation */
    
    // Navigation @IBOutlets
    @IBOutlet weak var guestNavButton: UIButton!
    @IBOutlet weak var employeeNavButton: UIButton!
    @IBOutlet weak var managerNavButton: UIButton!
    @IBOutlet weak var contractorNavButton: UIButton!
    @IBOutlet weak var vendorNavButton: UIButton!

    // SubNavigation @IBOutlets
    @IBOutlet weak var subNavStackView: UIView!
    @IBOutlet weak var subNavOption1: UIButton!
    @IBOutlet weak var subNavOption2: UIButton!
    @IBOutlet weak var subNavOption3: UIButton!
    @IBOutlet weak var subNavOption4: UIButton!
    @IBOutlet weak var subNavOption5: UIButton!
    
    // Labels for User Data Textfields
    @IBOutlet weak var dateOfBirthLabel: UILabel!
    @IBOutlet weak var socialSecurityNumberLabel: UILabel!
    @IBOutlet weak var projectNumberLabel: UILabel!
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var companyLabel: UILabel!
    @IBOutlet weak var streetAddressLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var zipCodeLabel: UILabel!
    
    // User Data TextField @IBOutlets
    @IBOutlet weak var dateOfBirth: UITextField!
    @IBOutlet weak var socialSecurityNumber: UITextField!
    @IBOutlet weak var projectNumber: UITextField!
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var company: UITextField!
    @IBOutlet weak var streetAddress: UITextField!
    @IBOutlet weak var city: UITextField!
    @IBOutlet weak var state: UITextField!
    @IBOutlet weak var zipCode: UITextField!
    
    
    /* Buttons @IBActions  */
    
    // Navigation Buttons
    @IBAction func guestNavButton(_ sender: UIButton) {
        
        labelFontReset()
        
        contractorNavButton.isSelected = false
        guestNavButton.isSelected = true
        employeeNavButton.isSelected = false
        managerNavButton.isSelected = false
        vendorNavButton.isSelected = false
        
        subNavOption1.isSelected = false
        subNavOption2.isSelected = false
        subNavOption3.isSelected = false
        subNavOption4.isSelected = false
        subNavOption5.isSelected = false
        
        subNavOption1.setTitle(EntrantTypeSubNav.child.rawValue, for: .normal)
        subNavOption2.setTitle(EntrantTypeSubNav.adult.rawValue, for: .normal)
        subNavOption3.setTitle(EntrantTypeSubNav.senior.rawValue, for: .normal)
        subNavOption4.setTitle(EntrantTypeSubNav.vip.rawValue, for: .normal)
        subNavOption5.setTitle(EntrantTypeSubNav.seasonPass.rawValue, for: .normal)
        
        subNavOption4.isHidden = false
        subNavOption5.isHidden = false
        
        /* UITextField appearance */
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
        
        /* UITextField Editing active/inactive */
        dateOfBirth.isUserInteractionEnabled = false
        socialSecurityNumber.isUserInteractionEnabled = false
        projectNumber.isUserInteractionEnabled = false
        firstName.isUserInteractionEnabled = false
        lastName.isUserInteractionEnabled = false
        company.isUserInteractionEnabled = false
        streetAddress.isUserInteractionEnabled = false
        city.isUserInteractionEnabled = false
        state.isUserInteractionEnabled = false
        zipCode.isUserInteractionEnabled = false
        
        
        
    }

    @IBAction func employeeNavButton(_ sender: UIButton) {
        
        labelFontReset()
        
        contractorNavButton.isSelected = false
        guestNavButton.isSelected = false
        employeeNavButton.isSelected = true
        managerNavButton.isSelected = false
        vendorNavButton.isSelected = false
        
        subNavOption1.isSelected = false
        subNavOption2.isSelected = false
        subNavOption3.isSelected = false
        subNavOption4.isSelected = false
        subNavOption5.isSelected = false
        
        subNavOption1.setTitle(EntrantTypeSubNav.hourlyFood.rawValue, for: .normal)
        subNavOption2.setTitle(EntrantTypeSubNav.hourlyRide.rawValue, for: .normal)
        subNavOption3.setTitle(EntrantTypeSubNav.hourlyMaintenance.rawValue, for: .normal)
        
        subNavOption4.isHidden = true
        subNavOption5.isHidden = true
        
        /* UITextField appearance */
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
        
        /* UITextField Editing active/inactive */
        dateOfBirth.isUserInteractionEnabled = false
        socialSecurityNumber.isUserInteractionEnabled = false
        projectNumber.isUserInteractionEnabled = false
        firstName.isUserInteractionEnabled = false
        lastName.isUserInteractionEnabled = false
        company.isUserInteractionEnabled = false
        streetAddress.isUserInteractionEnabled = false
        city.isUserInteractionEnabled = false
        state.isUserInteractionEnabled = false
        zipCode.isUserInteractionEnabled = false
        
        
        
    }
    
    @IBAction func managerNavButton(_ sender: UIButton) {
        
        labelFontReset()
        
        contractorNavButton.isSelected = false
        guestNavButton.isSelected = false
        employeeNavButton.isSelected = false
        managerNavButton.isSelected = true
        vendorNavButton.isSelected = false
        
        subNavOption1.isSelected = false
        subNavOption2.isSelected = false
        subNavOption3.isSelected = false
        subNavOption4.isSelected = false
        subNavOption5.isSelected = false
        
        subNavOption1.setTitle(ManagerType.shift.rawValue, for: .normal)
        subNavOption2.setTitle(ManagerType.general.rawValue, for: .normal)
        subNavOption3.setTitle(ManagerType.senior.rawValue, for: .normal)
        
        subNavOption4.isHidden = true
        subNavOption5.isHidden = true
        
        /* UITextField appearance */
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
        
        /* UITextField Editing active/inactive */
        dateOfBirth.isUserInteractionEnabled = false
        socialSecurityNumber.isUserInteractionEnabled = false
        projectNumber.isUserInteractionEnabled = false
        firstName.isUserInteractionEnabled = false
        lastName.isUserInteractionEnabled = false
        company.isUserInteractionEnabled = false
        streetAddress.isUserInteractionEnabled = false
        city.isUserInteractionEnabled = false
        state.isUserInteractionEnabled = false
        zipCode.isUserInteractionEnabled = false
        
    }
    
    @IBAction func contractorNavButton(_ sender: UIButton) {
        
        labelFontReset()
        
        contractorNavButton.isSelected = true
        guestNavButton.isSelected = false
        employeeNavButton.isSelected = false
        managerNavButton.isSelected = false
        vendorNavButton.isSelected = false
        
        subNavOption1.isSelected = false
        subNavOption2.isSelected = false
        subNavOption3.isSelected = false
        subNavOption4.isSelected = false
        subNavOption5.isSelected = false
        
        subNavOption1.setTitle(ContractorSubNav.proj1001.rawValue, for: .normal)
        subNavOption2.setTitle(ContractorSubNav.proj1002.rawValue, for: .normal)
        subNavOption3.setTitle(ContractorSubNav.proj1003.rawValue, for: .normal)
        subNavOption4.setTitle(ContractorSubNav.proj2001.rawValue, for: .normal)
        subNavOption5.setTitle(ContractorSubNav.proj2002.rawValue, for: .normal)
        
        subNavOption4.isHidden = false
        subNavOption5.isHidden = false
        
        /* UITextField appearance */
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
        
        /* UITextField Editing active/inactive */
        dateOfBirth.isUserInteractionEnabled = false
        socialSecurityNumber.isUserInteractionEnabled = false
        projectNumber.isUserInteractionEnabled = false
        firstName.isUserInteractionEnabled = false
        lastName.isUserInteractionEnabled = false
        company.isUserInteractionEnabled = false
        streetAddress.isUserInteractionEnabled = false
        city.isUserInteractionEnabled = false
        state.isUserInteractionEnabled = false
        zipCode.isUserInteractionEnabled = false
        
    }
    
    @IBAction func vendorNavButton(_ sender: UIButton) {
        
        labelFontReset()
        
        contractorNavButton.isSelected = false
        guestNavButton.isSelected = false
        employeeNavButton.isSelected = false
        managerNavButton.isSelected = false
        vendorNavButton.isSelected = true
        
        subNavOption1.isSelected = false
        subNavOption2.isSelected = false
        subNavOption3.isSelected = false
        subNavOption4.isSelected = false
        subNavOption5.isSelected = false
        
        subNavOption1.setTitle(Vendors.acme.rawValue, for: .normal)
        subNavOption2.setTitle(Vendors.orkin.rawValue, for: .normal)
        subNavOption3.setTitle(Vendors.fedex.rawValue, for: .normal)
        subNavOption4.setTitle(Vendors.nwElectrical.rawValue, for: .normal)
        
        subNavOption4.isHidden = false
        subNavOption5.isHidden = true
        
        /* UITextField appearance */
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
        /*MARK: *** dateOfVisit ***   */
        
        /* UITextField Editing active/inactive */
        dateOfBirth.isUserInteractionEnabled = false
        socialSecurityNumber.isUserInteractionEnabled = false
        projectNumber.isUserInteractionEnabled = false
        firstName.isUserInteractionEnabled = false
        lastName.isUserInteractionEnabled = false
        company.isUserInteractionEnabled = false
        streetAddress.isUserInteractionEnabled = false
        city.isUserInteractionEnabled = false
        state.isUserInteractionEnabled = false
        zipCode.isUserInteractionEnabled = false
        /*MARK: *** dateOfVisit ***   */
        
    }
    
    
    // SubNavigation Buttons
    @IBAction func subNavOption1Choice(_ sender: UIButton) {
        
        subNavOption1.isSelected = true
        subNavOption2.isSelected = false
        subNavOption3.isSelected = false
        subNavOption4.isSelected = false
        subNavOption5.isSelected = false
        
        if subNavOption1.currentTitle == EntrantTypeSubNav.child.rawValue && subNavOption1.isSelected == true {
            labelFontReset()
            /* UITextField appearance */
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
            
            /* UITextField Editing active/inactive */
            dateOfBirth.isUserInteractionEnabled = true
            socialSecurityNumber.isUserInteractionEnabled = false
            projectNumber.isUserInteractionEnabled = false
            firstName.isUserInteractionEnabled = false
            lastName.isUserInteractionEnabled = false
            company.isUserInteractionEnabled = false
            streetAddress.isUserInteractionEnabled = false
            city.isUserInteractionEnabled = false
            state.isUserInteractionEnabled = false
            zipCode.isUserInteractionEnabled = false
            
        } else if (subNavOption1.currentTitle == EntrantTypeSubNav.hourlyFood.rawValue || subNavOption1.currentTitle == ManagerType.shift.rawValue) && subNavOption1.isSelected == true {
            
            /* UITextField Editing active/inactive */
            dateOfBirth.isUserInteractionEnabled = true
            socialSecurityNumber.isUserInteractionEnabled = true
            projectNumber.isUserInteractionEnabled = false
            firstName.isUserInteractionEnabled = true
            lastName.isUserInteractionEnabled = true
            company.isUserInteractionEnabled = false
            streetAddress.isUserInteractionEnabled = true
            city.isUserInteractionEnabled = true
            state.isUserInteractionEnabled = true
            zipCode.isUserInteractionEnabled = true
            
        } else if subNavOption1.currentTitle == ContractorSubNav.proj1001.rawValue && subNavOption1.isSelected == true {
        
            /* UITextField Editing active/inactive */
            dateOfBirth.isUserInteractionEnabled = true
            socialSecurityNumber.isUserInteractionEnabled = true
            projectNumber.isUserInteractionEnabled = true
            firstName.isUserInteractionEnabled = true
            lastName.isUserInteractionEnabled = true
            company.isUserInteractionEnabled = false
            streetAddress.isUserInteractionEnabled = true
            city.isUserInteractionEnabled = true
            state.isUserInteractionEnabled = true
            zipCode.isUserInteractionEnabled = true
            
        } else if subNavOption1.currentTitle == Vendors.acme.rawValue && subNavOption1.isSelected == true {
        
            /* UITextField Editing active/inactive */
            dateOfBirth.isUserInteractionEnabled = true
            socialSecurityNumber.isUserInteractionEnabled = false
            projectNumber.isUserInteractionEnabled = false
            firstName.isUserInteractionEnabled = true
            lastName.isUserInteractionEnabled = true
            company.isUserInteractionEnabled = true
            streetAddress.isUserInteractionEnabled = false
            city.isUserInteractionEnabled = false
            state.isUserInteractionEnabled = false
            zipCode.isUserInteractionEnabled = false
            
        }
        
        
    }
        
    @IBAction func subNavOption2Choice(_ sender: UIButton) {
        
        subNavOption1.isSelected = false
        subNavOption2.isSelected = true
        subNavOption3.isSelected = false
        subNavOption4.isSelected = false
        subNavOption5.isSelected = false
        
        if subNavOption2.currentTitle == EntrantTypeSubNav.adult.rawValue && subNavOption2.isSelected == true {
            
            labelFontReset()
            
            /* UITextField appearance */
            dateOfBirth.alpha = 0.2
            socialSecurityNumber.alpha = 0.2
            projectNumber.alpha = 0.2
            firstName.alpha = 0.2
            lastName.alpha = 0.2
            company.alpha = 0.2
            streetAddress.alpha = 0.2
            city.alpha = 0.2
            state.alpha = 0.2
            zipCode.alpha = 0.2
            
            /* UITextField Editing active/inactive */
            dateOfBirth.isUserInteractionEnabled = false
            socialSecurityNumber.isUserInteractionEnabled = false
            projectNumber.isUserInteractionEnabled = false
            firstName.isUserInteractionEnabled = false
            lastName.isUserInteractionEnabled = false
            company.isUserInteractionEnabled = false
            streetAddress.isUserInteractionEnabled = false
            city.isUserInteractionEnabled = false
            state.isUserInteractionEnabled = false
            zipCode.isUserInteractionEnabled = false
            
        } else if (subNavOption2.currentTitle == EntrantTypeSubNav.hourlyRide.rawValue || subNavOption2.currentTitle == ManagerType.general.rawValue) && subNavOption2.isSelected == true {
            
            /* UITextField Editing active/inactive */
            dateOfBirth.isUserInteractionEnabled = true
            socialSecurityNumber.isUserInteractionEnabled = true
            projectNumber.isUserInteractionEnabled = false
            firstName.isUserInteractionEnabled = true
            lastName.isUserInteractionEnabled = true
            company.isUserInteractionEnabled = false
            streetAddress.isUserInteractionEnabled = true
            city.isUserInteractionEnabled = true
            state.isUserInteractionEnabled = true
            zipCode.isUserInteractionEnabled = true
        
        } else if subNavOption2.currentTitle == ContractorSubNav.proj1002.rawValue && subNavOption2.isSelected == true {
            
            /* UITextField Editing active/inactive */
            dateOfBirth.isUserInteractionEnabled = true
            socialSecurityNumber.isUserInteractionEnabled = true
            projectNumber.isUserInteractionEnabled = true
            firstName.isUserInteractionEnabled = true
            lastName.isUserInteractionEnabled = true
            company.isUserInteractionEnabled = false
            streetAddress.isUserInteractionEnabled = true
            city.isUserInteractionEnabled = true
            state.isUserInteractionEnabled = true
            zipCode.isUserInteractionEnabled = true
            
        } else if subNavOption2.currentTitle == Vendors.orkin.rawValue && subNavOption2.isSelected == true {
            
            /* UITextField Editing active/inactive */
            dateOfBirth.isUserInteractionEnabled = true
            socialSecurityNumber.isUserInteractionEnabled = false
            projectNumber.isUserInteractionEnabled = false
            firstName.isUserInteractionEnabled = true
            lastName.isUserInteractionEnabled = true
            company.isUserInteractionEnabled = true
            streetAddress.isUserInteractionEnabled = false
            city.isUserInteractionEnabled = false
            state.isUserInteractionEnabled = false
            zipCode.isUserInteractionEnabled = false
            
        }
    }
    
    @IBAction func subNavOption3Choice(_ sender: UIButton) {
        
        subNavOption1.isSelected = false
        subNavOption2.isSelected = false
        subNavOption3.isSelected = true
        subNavOption4.isSelected = false
        subNavOption5.isSelected = false
        
        if subNavOption3.currentTitle == EntrantTypeSubNav.senior.rawValue && subNavOption3.isSelected == true && guestNavButton.isSelected == true {
            
            labelFontReset()
            
            /* UITextField appearance */
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
            
            /* UITextField Editing active/inactive */
            dateOfBirth.isUserInteractionEnabled = true
            socialSecurityNumber.isUserInteractionEnabled = false
            projectNumber.isUserInteractionEnabled = false
            firstName.isUserInteractionEnabled = true
            lastName.isUserInteractionEnabled = true
            company.isUserInteractionEnabled = false
            streetAddress.isUserInteractionEnabled = false
            city.isUserInteractionEnabled = false
            state.isUserInteractionEnabled = false
            zipCode.isUserInteractionEnabled = false
            
        } else if (subNavOption3.currentTitle == EntrantTypeSubNav.hourlyRide.rawValue || subNavOption3.currentTitle == ManagerType.senior.rawValue) && subNavOption1.isSelected == true {
            
            /* UITextField Editing active/inactive */
            dateOfBirth.isUserInteractionEnabled = true
            socialSecurityNumber.isUserInteractionEnabled = true
            projectNumber.isUserInteractionEnabled = false
            firstName.isUserInteractionEnabled = true
            lastName.isUserInteractionEnabled = true
            company.isUserInteractionEnabled = false
            streetAddress.isUserInteractionEnabled = true
            city.isUserInteractionEnabled = true
            state.isUserInteractionEnabled = true
            zipCode.isUserInteractionEnabled = true
            
        } else if subNavOption3.currentTitle == ContractorSubNav.proj1003.rawValue && subNavOption3.isSelected == true {
            
            /* UITextField Editing active/inactive */
            dateOfBirth.isUserInteractionEnabled = true
            socialSecurityNumber.isUserInteractionEnabled = true
            projectNumber.isUserInteractionEnabled = true
            firstName.isUserInteractionEnabled = true
            lastName.isUserInteractionEnabled = true
            company.isUserInteractionEnabled = false
            streetAddress.isUserInteractionEnabled = true
            city.isUserInteractionEnabled = true
            state.isUserInteractionEnabled = true
            zipCode.isUserInteractionEnabled = true
            
        } else if subNavOption3.currentTitle == Vendors.fedex.rawValue && subNavOption3.isSelected == true {
            
            /* UITextField Editing active/inactive */
            dateOfBirth.isUserInteractionEnabled = true
            socialSecurityNumber.isUserInteractionEnabled = false
            projectNumber.isUserInteractionEnabled = false
            firstName.isUserInteractionEnabled = true
            lastName.isUserInteractionEnabled = true
            company.isUserInteractionEnabled = true
            streetAddress.isUserInteractionEnabled = false
            city.isUserInteractionEnabled = false
            state.isUserInteractionEnabled = false
            zipCode.isUserInteractionEnabled = false
            
        }

    }
    
    @IBAction func subNavOption4Choice(_ sender: UIButton) {
        
        subNavOption1.isSelected = false
        subNavOption2.isSelected = false
        subNavOption3.isSelected = false
        subNavOption4.isSelected = true
        subNavOption5.isSelected = false
        
        if subNavOption4.currentTitle == EntrantTypeSubNav.vip.rawValue && subNavOption4.isSelected == true {
            
            labelFontReset()
            
            /* UITextField appearance */
            dateOfBirth.alpha = 0.2
            socialSecurityNumber.alpha = 0.2
            projectNumber.alpha = 0.2
            firstName.alpha = 0.2
            lastName.alpha = 0.2
            company.alpha = 0.2
            streetAddress.alpha = 0.2
            city.alpha = 0.2
            state.alpha = 0.2
            zipCode.alpha = 0.2
            
            /* UITextField Editing active/inactive */
            dateOfBirth.isUserInteractionEnabled = false
            socialSecurityNumber.isUserInteractionEnabled = false
            projectNumber.isUserInteractionEnabled = false
            firstName.isUserInteractionEnabled = false
            lastName.isUserInteractionEnabled = false
            company.isUserInteractionEnabled = false
            streetAddress.isUserInteractionEnabled = false
            city.isUserInteractionEnabled = false
            state.isUserInteractionEnabled = false
            zipCode.isUserInteractionEnabled = false
            
        } else if subNavOption4.currentTitle == ContractorSubNav.proj2001.rawValue && subNavOption4.isSelected == true {
            
            /* UITextField Editing active/inactive */
            dateOfBirth.isUserInteractionEnabled = true
            socialSecurityNumber.isUserInteractionEnabled = true
            projectNumber.isUserInteractionEnabled = true
            firstName.isUserInteractionEnabled = true
            lastName.isUserInteractionEnabled = true
            company.isUserInteractionEnabled = false
            streetAddress.isUserInteractionEnabled = true
            city.isUserInteractionEnabled = true
            state.isUserInteractionEnabled = true
            zipCode.isUserInteractionEnabled = true
            
        } else if subNavOption4.currentTitle == Vendors.nwElectrical.rawValue && subNavOption4.isSelected == true {
            
            /* UITextField Editing active/inactive */
            dateOfBirth.isUserInteractionEnabled = true
            socialSecurityNumber.isUserInteractionEnabled = false
            projectNumber.isUserInteractionEnabled = false
            firstName.isUserInteractionEnabled = true
            lastName.isUserInteractionEnabled = true
            company.isUserInteractionEnabled = true
            streetAddress.isUserInteractionEnabled = false
            city.isUserInteractionEnabled = false
            state.isUserInteractionEnabled = false
            zipCode.isUserInteractionEnabled = false
            
        }

    }
    
    @IBAction func subNavOption5(_ sender: UIButton) {
        
        subNavOption1.isSelected = false
        subNavOption2.isSelected = false
        subNavOption3.isSelected = false
        subNavOption4.isSelected = false
        subNavOption5.isSelected = true
        
        if subNavOption5.currentTitle == EntrantTypeSubNav.seasonPass.rawValue && subNavOption5.isSelected == true {
            
            labelFontReset()
            
            /* UITextField appearance */
            dateOfBirth.alpha = 1.0
            socialSecurityNumber.alpha = 0.2
            projectNumber.alpha = 0.2
            firstName.alpha = 1.0
            lastName.alpha = 1.0
            company.alpha = 0.2
            streetAddress.alpha = 1.0
            city.alpha = 1.0
            state.alpha = 1.0
            zipCode.alpha = 1.0
            
            /* UITextField Editing active/inactive */
            dateOfBirth.isUserInteractionEnabled = true
            socialSecurityNumber.isUserInteractionEnabled = false
            projectNumber.isUserInteractionEnabled = false
            firstName.isUserInteractionEnabled = true
            lastName.isUserInteractionEnabled = true
            company.isUserInteractionEnabled = false
            streetAddress.isUserInteractionEnabled = true
            city.isUserInteractionEnabled = true
            state.isUserInteractionEnabled = true
            zipCode.isUserInteractionEnabled = true
            
        } else if subNavOption5.currentTitle == ContractorSubNav.proj2002.rawValue && subNavOption5.isSelected == true {
            
            /* UITextField Editing active/inactive */
            dateOfBirth.isUserInteractionEnabled = true
            socialSecurityNumber.isUserInteractionEnabled = true
            projectNumber.isUserInteractionEnabled = true
            firstName.isUserInteractionEnabled = true
            lastName.isUserInteractionEnabled = true
            company.isUserInteractionEnabled = false
            streetAddress.isUserInteractionEnabled = true
            city.isUserInteractionEnabled = true
            state.isUserInteractionEnabled = true
            zipCode.isUserInteractionEnabled = true
            
        }

    }


    // Pass Generators
    @IBAction func generatePass(_ sender: ButtonDesign) {
        
        
        
        if subNavOption1.currentTitle == EntrantTypeSubNav.child.rawValue && subNavOption1.isSelected == true {
            
            guard let newUser = GuestChildSource(dateOfBirth: dateOfBirth.text), newUser.dateOfBirth != nil || newUser.dateOfBirth != "" else {
                dateOfBirthLabel.font = UIFont.italicSystemFont(ofSize: dateOfBirthLabel.font.pointSize)
                print(ErrorSource.missingBirthdate(description: "Please enter your Date of Birth"))
                return
            }
            
            delegate?.entrantPassed(entrant: newUser)
            
        
            
        } else if subNavOption2.currentTitle == EntrantTypeSubNav.adult.rawValue && subNavOption2.isSelected == true {
            
            if let newUser = GuestClassicSource() {
                delegate?.entrantPassed(entrant: newUser)
            }
            
            
        
        } else if subNavOption3.currentTitle == EntrantTypeSubNav.senior.rawValue && subNavOption3.isSelected == true && guestNavButton.isSelected == true {
            
            guard let newUser = GuestSeniorSource(dateOfBirth: dateOfBirth.text, firstName: firstName.text, lastName: lastName.text), newUser.dateOfBirth != nil || newUser.dateOfBirth != "" else {
                dateOfBirthLabel.font = UIFont.italicSystemFont(ofSize: dateOfBirthLabel.font.pointSize)
                dateOfBirthLabel.textColor = UIColor.red
                print(ErrorSource.missingBirthdate(description: "Please enter your Date of Birth"))
                return
            }
            guard newUser.firstName != nil || newUser.firstName == "" else {
                firstNameLabel.font = UIFont.italicSystemFont(ofSize: firstNameLabel.font.pointSize)
                firstNameLabel.textColor = UIColor.red
                print(ErrorSource.missingFirstName(description: "Please enter your First Name"))
                return
            }
            guard newUser.lastName != nil || newUser.lastName != "" else {
                lastNameLabel.font = UIFont.italicSystemFont(ofSize: lastNameLabel.font.pointSize)
                lastNameLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your Last Name"))
                return
            }
            
            delegate?.entrantPassed(entrant: newUser)
            
        
        } else if subNavOption4.currentTitle == EntrantTypeSubNav.vip.rawValue && subNavOption4.isSelected == true {
            
            if let newUser = GuestVIPSource() {
                    delegate?.entrantPassed(entrant: newUser)
            }
        
        } else if subNavOption5.currentTitle == EntrantTypeSubNav.seasonPass.rawValue && subNavOption5.isSelected == true {
            
            guard let newUser = GuestSeasonPassSource(dateOfBirth: dateOfBirth.text, firstName: firstName.text, lastName: lastName.text, streetAddress: streetAddress.text, city: city.text, state: state.text, zipCode: zipCode.text), newUser.dateOfBirth != nil || newUser.dateOfBirth != "" else {
                dateOfBirthLabel.font = UIFont.italicSystemFont(ofSize: dateOfBirthLabel.font.pointSize)
                dateOfBirthLabel.textColor = UIColor.red
                print(ErrorSource.missingBirthdate(description: "Please enter your Date of Birth"))
                return
            }
            guard newUser.firstName != nil || newUser.firstName == "" else {
                firstNameLabel.font = UIFont.italicSystemFont(ofSize: firstNameLabel.font.pointSize)
                firstNameLabel.textColor = UIColor.red
                print(ErrorSource.missingFirstName(description: "Please enter your First Name"))
                return
            }
            guard newUser.lastName != nil || newUser.lastName != "" else {
                lastNameLabel.font = UIFont.italicSystemFont(ofSize: lastNameLabel.font.pointSize)
                lastNameLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your Last Name"))
                return
            }
            guard newUser.streetAddress != nil || newUser.streetAddress != "" else {
                streetAddressLabel.font = UIFont.italicSystemFont(ofSize: streetAddressLabel.font.pointSize)
                streetAddressLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your Street Address"))
                return
            }
            guard newUser.city != nil || newUser.city != "" else {
                cityLabel.font = UIFont.italicSystemFont(ofSize: cityLabel.font.pointSize)
                cityLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your City"))
                return
            }
            guard newUser.state != nil || newUser.state != "" else {
                stateLabel.font = UIFont.italicSystemFont(ofSize: stateLabel.font.pointSize)
                stateLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your State"))
                return
            }
            guard newUser.zipCode != nil || newUser.zipCode != "" else {
                zipCodeLabel.font = UIFont.italicSystemFont(ofSize: zipCodeLabel.font.pointSize)
                zipCodeLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your ZIP Code"))
                return
            }
            
            delegate?.entrantPassed(entrant: newUser)
            
        } else if subNavOption1.currentTitle == EntrantTypeSubNav.hourlyFood.rawValue && subNavOption1.isSelected == true {

            guard let newUser = HourlyFoodEmployeeSource(dateOfBirth: dateOfBirth.text, firstName: firstName.text, lastName: lastName.text, streetAddress: streetAddress.text, city: city.text, state: state.text, zipCode: zipCode.text, socialSecurityNumber: socialSecurityNumber.text), newUser.dateOfBirth != nil || newUser.dateOfBirth != "" else {
                dateOfBirthLabel.font = UIFont.italicSystemFont(ofSize: dateOfBirthLabel.font.pointSize)
                dateOfBirthLabel.textColor = UIColor.red
                print(ErrorSource.missingBirthdate(description: "Please enter your Date of Birth"))
                return
            }
            guard newUser.firstName != nil || newUser.firstName == "" else {
                firstNameLabel.font = UIFont.italicSystemFont(ofSize: firstNameLabel.font.pointSize)
                firstNameLabel.textColor = UIColor.red
                print(ErrorSource.missingFirstName(description: "Please enter your First Name"))
                return
            }
            guard newUser.lastName != nil || newUser.lastName != "" else {
                lastNameLabel.font = UIFont.italicSystemFont(ofSize: lastNameLabel.font.pointSize)
                lastNameLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your Last Name"))
                return
            }
            guard newUser.streetAddress != nil || newUser.streetAddress != "" else {
                streetAddressLabel.font = UIFont.italicSystemFont(ofSize: streetAddressLabel.font.pointSize)
                streetAddressLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your Street Address"))
                return
            }
            guard newUser.city != nil || newUser.city != "" else {
                cityLabel.font = UIFont.italicSystemFont(ofSize: cityLabel.font.pointSize)
                cityLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your City"))
                return
            }
            guard newUser.state != nil || newUser.state != "" else {
                stateLabel.font = UIFont.italicSystemFont(ofSize: stateLabel.font.pointSize)
                stateLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your State"))
                return
            }
            guard newUser.zipCode != nil || newUser.zipCode != "" else {
                zipCodeLabel.font = UIFont.italicSystemFont(ofSize: zipCodeLabel.font.pointSize)
                zipCodeLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your ZIP Code"))
                return
            }
            guard newUser.socialSecurityNumber != nil || newUser.socialSecurityNumber != "" else {
                socialSecurityNumberLabel.font = UIFont.italicSystemFont(ofSize: socialSecurityNumberLabel.font.pointSize)
                socialSecurityNumberLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your Social Security Number"))
                return
            }
            
            delegate?.entrantPassed(entrant: newUser)

            
        } else if subNavOption2.currentTitle == EntrantTypeSubNav.hourlyRide.rawValue && subNavOption2.isSelected == true {
            
            guard let newUser = HourlyRideServicesEmployeeSource(dateOfBirth: dateOfBirth.text, firstName: firstName.text, lastName: lastName.text, streetAddress: streetAddress.text, city: city.text, state: state.text, zipCode: zipCode.text, socialSecurityNumber: socialSecurityNumber.text), newUser.dateOfBirth != nil || newUser.dateOfBirth != "" else {
                dateOfBirthLabel.font = UIFont.italicSystemFont(ofSize: dateOfBirthLabel.font.pointSize)
                dateOfBirthLabel.textColor = UIColor.red
                print(ErrorSource.missingBirthdate(description: "Please enter your Date of Birth"))
                return
            }
            guard newUser.firstName != nil || newUser.firstName == "" else {
                firstNameLabel.font = UIFont.italicSystemFont(ofSize: firstNameLabel.font.pointSize)
                firstNameLabel.textColor = UIColor.red
                print(ErrorSource.missingFirstName(description: "Please enter your First Name"))
                return
            }
            guard newUser.lastName != nil || newUser.lastName != "" else {
                lastNameLabel.font = UIFont.italicSystemFont(ofSize: lastNameLabel.font.pointSize)
                lastNameLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your Last Name"))
                return
            }
            guard newUser.streetAddress != nil || newUser.streetAddress != "" else {
                streetAddressLabel.font = UIFont.italicSystemFont(ofSize: streetAddressLabel.font.pointSize)
                streetAddressLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your Street Address"))
                return
            }
            guard newUser.city != nil || newUser.city != "" else {
                cityLabel.font = UIFont.italicSystemFont(ofSize: cityLabel.font.pointSize)
                cityLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your City"))
                return
            }
            guard newUser.state != nil || newUser.state != "" else {
                stateLabel.font = UIFont.italicSystemFont(ofSize: stateLabel.font.pointSize)
                stateLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your State"))
                return
            }
            guard newUser.zipCode != nil || newUser.zipCode != "" else {
                zipCodeLabel.font = UIFont.italicSystemFont(ofSize: zipCodeLabel.font.pointSize)
                zipCodeLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your ZIP Code"))
                return
            }
            guard newUser.socialSecurityNumber != nil || newUser.socialSecurityNumber != "" else {
                socialSecurityNumberLabel.font = UIFont.italicSystemFont(ofSize: socialSecurityNumberLabel.font.pointSize)
                socialSecurityNumberLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your Social Security Number"))
                return
            }
            
            delegate?.entrantPassed(entrant: newUser)
        
        } else if subNavOption3.currentTitle == EntrantTypeSubNav.hourlyMaintenance.rawValue && subNavOption3.isSelected == true {

            guard let newUser = HourlyMaintenanceEmployeeSource(dateOfBirth: dateOfBirth.text, firstName: firstName.text, lastName: lastName.text, streetAddress: streetAddress.text, city: city.text, state: state.text, zipCode: zipCode.text, socialSecurityNumber: socialSecurityNumber.text), newUser.dateOfBirth != nil || newUser.dateOfBirth != "" else {
                dateOfBirthLabel.font = UIFont.italicSystemFont(ofSize: dateOfBirthLabel.font.pointSize)
                dateOfBirthLabel.textColor = UIColor.red
                print(ErrorSource.missingBirthdate(description: "Please enter your Date of Birth"))
                return
            }
            guard newUser.firstName != nil || newUser.firstName == "" else {
                firstNameLabel.font = UIFont.italicSystemFont(ofSize: firstNameLabel.font.pointSize)
                firstNameLabel.textColor = UIColor.red
                print(ErrorSource.missingFirstName(description: "Please enter your First Name"))
                return
            }
            guard newUser.lastName != nil || newUser.lastName != "" else {
                lastNameLabel.font = UIFont.italicSystemFont(ofSize: lastNameLabel.font.pointSize)
                lastNameLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your Last Name"))
                return
            }
            guard newUser.streetAddress != nil || newUser.streetAddress != "" else {
                streetAddressLabel.font = UIFont.italicSystemFont(ofSize: streetAddressLabel.font.pointSize)
                streetAddressLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your Street Address"))
                return
            }
            guard newUser.city != nil || newUser.city != "" else {
                cityLabel.font = UIFont.italicSystemFont(ofSize: cityLabel.font.pointSize)
                cityLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your City"))
                return
            }
            guard newUser.state != nil || newUser.state != "" else {
                stateLabel.font = UIFont.italicSystemFont(ofSize: stateLabel.font.pointSize)
                stateLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your State"))
                return
            }
            guard newUser.zipCode != nil || newUser.zipCode != "" else {
                zipCodeLabel.font = UIFont.italicSystemFont(ofSize: zipCodeLabel.font.pointSize)
                zipCodeLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your ZIP Code"))
                return
            }
            guard newUser.socialSecurityNumber != nil || newUser.socialSecurityNumber != "" else {
                socialSecurityNumberLabel.font = UIFont.italicSystemFont(ofSize: socialSecurityNumberLabel.font.pointSize)
                socialSecurityNumberLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your Social Security Number"))
                return
            }
            
            delegate?.entrantPassed(entrant: newUser)
        
        } else if subNavOption1.currentTitle == ManagerType.shift.rawValue && subNavOption1.isSelected == true {
            
            guard let newUser = ManagerEmployeeSource(areaAccess: [.amusement,.kitchen,.maintenance,.office,.rideControl], ridePrivileges: [.all], discountAccess: [.food,.merch], discountAmount: [.twentyfive,.twentyfive], requiredInformation: [.personal], managementTier: [.shift], dateOfBirth: dateOfBirth.text, firstName: firstName.text, lastName: lastName.text, streetAddress: streetAddress.text, city: city.text, state: state.text, zipCode: zipCode.text, socialSecurityNumber: socialSecurityNumber.text, company: nil, projectNumber: nil, dateOfVisit: nil), newUser.dateOfBirth != nil || newUser.dateOfBirth != "" else {
            //newUser.dateOfBirth != nil || newUser.dateOfBirth != "" else {
                dateOfBirthLabel.font = UIFont.italicSystemFont(ofSize: dateOfBirthLabel.font.pointSize)
                dateOfBirthLabel.textColor = UIColor.red
                print(ErrorSource.missingBirthdate(description: "Please enter your Date of Birth"))
                return
            }
            guard newUser.firstName != nil || newUser.firstName == "" else {
                firstNameLabel.font = UIFont.italicSystemFont(ofSize: firstNameLabel.font.pointSize)
                firstNameLabel.textColor = UIColor.red
                print(ErrorSource.missingFirstName(description: "Please enter your First Name"))
                return
            }
            guard newUser.lastName != nil || newUser.lastName != "" else {
                lastNameLabel.font = UIFont.italicSystemFont(ofSize: lastNameLabel.font.pointSize)
                lastNameLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your Last Name"))
                return
            }
            guard newUser.streetAddress != nil || newUser.streetAddress != "" else {
                streetAddressLabel.font = UIFont.italicSystemFont(ofSize: streetAddressLabel.font.pointSize)
                streetAddressLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your Street Address"))
                return
            }
            guard newUser.city != nil || newUser.city != "" else {
                cityLabel.font = UIFont.italicSystemFont(ofSize: cityLabel.font.pointSize)
                cityLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your City"))
                return
            }
            guard newUser.state != nil || newUser.state != "" else {
                stateLabel.font = UIFont.italicSystemFont(ofSize: stateLabel.font.pointSize)
                stateLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your State"))
                return
            }
            guard newUser.zipCode != nil || newUser.zipCode != "" else {
                zipCodeLabel.font = UIFont.italicSystemFont(ofSize: zipCodeLabel.font.pointSize)
                zipCodeLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your ZIP Code"))
                return
            }
            guard newUser.socialSecurityNumber != nil || newUser.socialSecurityNumber != "" else {
                socialSecurityNumberLabel.font = UIFont.italicSystemFont(ofSize: socialSecurityNumberLabel.font.pointSize)
                socialSecurityNumberLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your Social Security Number"))
                return
            }
            
            delegate?.entrantPassed(entrant: newUser)
        
        } else if subNavOption2.currentTitle == ManagerType.general.rawValue && subNavOption2.isSelected == true {
            
            guard let newUser = ManagerEmployeeSource(areaAccess: [.amusement,.kitchen,.maintenance,.office,.rideControl], ridePrivileges: [.all], discountAccess: [.food,.merch], discountAmount: [.twentyfive,.twentyfive], requiredInformation: [.personal], managementTier: [.general], dateOfBirth: dateOfBirth.text, firstName: firstName.text, lastName: lastName.text, streetAddress: streetAddress.text, city: city.text, state: state.text, zipCode: zipCode.text, socialSecurityNumber: socialSecurityNumber.text, company: nil, projectNumber: nil, dateOfVisit: nil), newUser.dateOfBirth != nil || newUser.dateOfBirth != "" else {
                dateOfBirthLabel.font = UIFont.italicSystemFont(ofSize: dateOfBirthLabel.font.pointSize)
                dateOfBirthLabel.textColor = UIColor.red
                print(ErrorSource.missingBirthdate(description: "Please enter your Date of Birth"))
                return
            }
            guard newUser.firstName != nil || newUser.firstName == "" else {
                firstNameLabel.font = UIFont.italicSystemFont(ofSize: firstNameLabel.font.pointSize)
                firstNameLabel.textColor = UIColor.red
                print(ErrorSource.missingFirstName(description: "Please enter your First Name"))
                return
            }
            guard newUser.lastName != nil || newUser.lastName != "" else {
                lastNameLabel.font = UIFont.italicSystemFont(ofSize: lastNameLabel.font.pointSize)
                lastNameLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your Last Name"))
                return
            }
            guard newUser.streetAddress != nil || newUser.streetAddress != "" else {
                streetAddressLabel.font = UIFont.italicSystemFont(ofSize: streetAddressLabel.font.pointSize)
                streetAddressLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your Street Address"))
                return
            }
            guard newUser.city != nil || newUser.city != "" else {
                cityLabel.font = UIFont.italicSystemFont(ofSize: cityLabel.font.pointSize)
                cityLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your City"))
                return
            }
            guard newUser.state != nil || newUser.state != "" else {
                stateLabel.font = UIFont.italicSystemFont(ofSize: stateLabel.font.pointSize)
                stateLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your State"))
                return
            }
            guard newUser.zipCode != nil || newUser.zipCode != "" else {
                zipCodeLabel.font = UIFont.italicSystemFont(ofSize: zipCodeLabel.font.pointSize)
                zipCodeLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your ZIP Code"))
                return
            }
            guard newUser.socialSecurityNumber != nil || newUser.socialSecurityNumber != "" else {
                socialSecurityNumberLabel.font = UIFont.italicSystemFont(ofSize: socialSecurityNumberLabel.font.pointSize)
                socialSecurityNumberLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your Social Security Number"))
                return
            }
            
            delegate?.entrantPassed(entrant: newUser)
        
        } else if subNavOption3.currentTitle == ManagerType.senior.rawValue && subNavOption3.isSelected == true {
        
            guard let newUser = ManagerEmployeeSource(areaAccess: [.amusement,.kitchen,.maintenance,.office,.rideControl], ridePrivileges: [.all], discountAccess: [.food,.merch], discountAmount: [.twentyfive,.twentyfive], requiredInformation: [.personal], managementTier: [.senior], dateOfBirth: dateOfBirth.text, firstName: firstName.text, lastName: lastName.text, streetAddress: streetAddress.text, city: city.text, state: state.text, zipCode: zipCode.text, socialSecurityNumber: socialSecurityNumber.text, company: nil, projectNumber: nil, dateOfVisit: nil), newUser.dateOfBirth != nil || newUser.dateOfBirth != "" else {
                dateOfBirthLabel.font = UIFont.italicSystemFont(ofSize: dateOfBirthLabel.font.pointSize)
                dateOfBirthLabel.textColor = UIColor.red
                print(ErrorSource.missingBirthdate(description: "Please enter your Date of Birth"))
                return
            }
            guard newUser.firstName != nil || newUser.firstName == "" else {
                firstNameLabel.font = UIFont.italicSystemFont(ofSize: firstNameLabel.font.pointSize)
                firstNameLabel.textColor = UIColor.red
                print(ErrorSource.missingFirstName(description: "Please enter your First Name"))
                return
            }
            guard newUser.lastName != nil || newUser.lastName != "" else {
                lastNameLabel.font = UIFont.italicSystemFont(ofSize: lastNameLabel.font.pointSize)
                lastNameLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your Last Name"))
                return
            }
            guard newUser.streetAddress != nil || newUser.streetAddress != "" else {
                streetAddressLabel.font = UIFont.italicSystemFont(ofSize: streetAddressLabel.font.pointSize)
                streetAddressLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your Street Address"))
                return
            }
            guard newUser.city != nil || newUser.city != "" else {
                cityLabel.font = UIFont.italicSystemFont(ofSize: cityLabel.font.pointSize)
                cityLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your City"))
                return
            }
            guard newUser.state != nil || newUser.state != "" else {
                stateLabel.font = UIFont.italicSystemFont(ofSize: stateLabel.font.pointSize)
                stateLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your State"))
                return
            }
            guard newUser.zipCode != nil || newUser.zipCode != "" else {
                zipCodeLabel.font = UIFont.italicSystemFont(ofSize: zipCodeLabel.font.pointSize)
                zipCodeLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your ZIP Code"))
                return
            }
            guard newUser.socialSecurityNumber != nil || newUser.socialSecurityNumber != "" else {
                socialSecurityNumberLabel.font = UIFont.italicSystemFont(ofSize: socialSecurityNumberLabel.font.pointSize)
                socialSecurityNumberLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your Social Security Number"))
                return
            }
            
            delegate?.entrantPassed(entrant: newUser)
            
        } else if subNavOption1.currentTitle == ContractorSubNav.proj1001.rawValue && subNavOption1.isSelected == true {
            
            guard let newUser = ContractEmployeeSource(areaAccess: [.amusement, .rideControl], ridePrivileges: [.none], discountAccess: [.none], discountAmount: [.none], requiredInformation: [.personal], managementTier: [.none], dateOfBirth: dateOfBirth.text, firstName: firstName.text, lastName: lastName.text, streetAddress: streetAddress.text, city: city.text, state: state.text, zipCode: zipCode.text, socialSecurityNumber: socialSecurityNumber.text, company: nil, projectNumber: ContractorSubNav.proj1001.rawValue, dateOfVisit: nil), newUser.dateOfBirth != nil || newUser.dateOfBirth != "" else {
                dateOfBirthLabel.font = UIFont.italicSystemFont(ofSize: dateOfBirthLabel.font.pointSize)
                dateOfBirthLabel.textColor = UIColor.red
                print(ErrorSource.missingBirthdate(description: "Please enter your Date of Birth"))
                return
            }
            guard newUser.firstName != nil || newUser.firstName == "" else {
                firstNameLabel.font = UIFont.italicSystemFont(ofSize: firstNameLabel.font.pointSize)
                firstNameLabel.textColor = UIColor.red
                print(ErrorSource.missingFirstName(description: "Please enter your First Name"))
                return
            }
            guard newUser.lastName != nil || newUser.lastName != "" else {
                lastNameLabel.font = UIFont.italicSystemFont(ofSize: lastNameLabel.font.pointSize)
                lastNameLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your Last Name"))
                return
            }
            guard newUser.streetAddress != nil || newUser.streetAddress != "" else {
                streetAddressLabel.font = UIFont.italicSystemFont(ofSize: streetAddressLabel.font.pointSize)
                streetAddressLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your Street Address"))
                return
            }
            guard newUser.city != nil || newUser.city != "" else {
                cityLabel.font = UIFont.italicSystemFont(ofSize: cityLabel.font.pointSize)
                cityLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your City"))
                return
            }
            guard newUser.state != nil || newUser.state != "" else {
                stateLabel.font = UIFont.italicSystemFont(ofSize: stateLabel.font.pointSize)
                stateLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your State"))
                return
            }
            guard newUser.zipCode != nil || newUser.zipCode != "" else {
                zipCodeLabel.font = UIFont.italicSystemFont(ofSize: zipCodeLabel.font.pointSize)
                zipCodeLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your ZIP Code"))
                return
            }
            guard newUser.socialSecurityNumber != nil || newUser.socialSecurityNumber != "" else {
                socialSecurityNumberLabel.font = UIFont.italicSystemFont(ofSize: socialSecurityNumberLabel.font.pointSize)
                socialSecurityNumberLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your Social Security Number"))
                return
            }
            
            delegate?.entrantPassed(entrant: newUser)
        
        } else if subNavOption2.currentTitle == ContractorSubNav.proj1002.rawValue && subNavOption2.isSelected == true {
            
            guard let newUser = ContractEmployeeSource(areaAccess: [.amusement, .rideControl, .maintenance], ridePrivileges: [.none], discountAccess: [.none], discountAmount: [.none], requiredInformation: [.personal], managementTier: [.none], dateOfBirth: dateOfBirth.text, firstName: firstName.text, lastName: lastName.text, streetAddress: streetAddress.text, city: city.text, state: state.text, zipCode: zipCode.text, socialSecurityNumber: socialSecurityNumber.text, company: nil, projectNumber: ContractorSubNav.proj1002.rawValue, dateOfVisit: nil
                ), newUser.dateOfBirth != nil || newUser.dateOfBirth != "" else {
                dateOfBirthLabel.font = UIFont.italicSystemFont(ofSize: dateOfBirthLabel.font.pointSize)
                dateOfBirthLabel.textColor = UIColor.red
                print(ErrorSource.missingBirthdate(description: "Please enter your Date of Birth"))
                return
            }
            guard newUser.firstName != nil || newUser.firstName == "" else {
                firstNameLabel.font = UIFont.italicSystemFont(ofSize: firstNameLabel.font.pointSize)
                firstNameLabel.textColor = UIColor.red
                print(ErrorSource.missingFirstName(description: "Please enter your First Name"))
                return
            }
            guard newUser.lastName != nil || newUser.lastName != "" else {
                lastNameLabel.font = UIFont.italicSystemFont(ofSize: lastNameLabel.font.pointSize)
                lastNameLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your Last Name"))
                return
            }
            guard newUser.streetAddress != nil || newUser.streetAddress != "" else {
                streetAddressLabel.font = UIFont.italicSystemFont(ofSize: streetAddressLabel.font.pointSize)
                streetAddressLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your Street Address"))
                return
            }
            guard newUser.city != nil || newUser.city != "" else {
                cityLabel.font = UIFont.italicSystemFont(ofSize: cityLabel.font.pointSize)
                cityLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your City"))
                return
            }
            guard newUser.state != nil || newUser.state != "" else {
                stateLabel.font = UIFont.italicSystemFont(ofSize: stateLabel.font.pointSize)
                stateLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your State"))
                return
            }
            guard newUser.zipCode != nil || newUser.zipCode != "" else {
                zipCodeLabel.font = UIFont.italicSystemFont(ofSize: zipCodeLabel.font.pointSize)
                zipCodeLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your ZIP Code"))
                return
            }
            guard newUser.socialSecurityNumber != nil || newUser.socialSecurityNumber != "" else {
                socialSecurityNumberLabel.font = UIFont.italicSystemFont(ofSize: socialSecurityNumberLabel.font.pointSize)
                socialSecurityNumberLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your Social Security Number"))
                return
            }
            
            delegate?.entrantPassed(entrant: newUser)
            
        } else if subNavOption3.currentTitle == ContractorSubNav.proj1003.rawValue && subNavOption3.isSelected == true {
            
            guard let newUser = ContractEmployeeSource(areaAccess: [.amusement, .kitchen, .rideControl, .maintenance, .office], ridePrivileges: [.none], discountAccess: [.none], discountAmount: [.none], requiredInformation: [.personal], managementTier: [.none], dateOfBirth: dateOfBirth.text, firstName: firstName.text, lastName: lastName.text, streetAddress: streetAddress.text, city: city.text, state: state.text, zipCode: zipCode.text, socialSecurityNumber: socialSecurityNumber.text, company: nil, projectNumber: ContractorSubNav.proj1003.rawValue, dateOfVisit: nil), newUser.dateOfBirth != nil || newUser.dateOfBirth != "" else {
                dateOfBirthLabel.font = UIFont.italicSystemFont(ofSize: dateOfBirthLabel.font.pointSize)
                dateOfBirthLabel.textColor = UIColor.red
                print(ErrorSource.missingBirthdate(description: "Please enter your Date of Birth"))
                return
            }
            guard newUser.firstName != nil || newUser.firstName == "" else {
                firstNameLabel.font = UIFont.italicSystemFont(ofSize: firstNameLabel.font.pointSize)
                firstNameLabel.textColor = UIColor.red
                print(ErrorSource.missingFirstName(description: "Please enter your First Name"))
                return
            }
            guard newUser.lastName != nil || newUser.lastName != "" else {
                lastNameLabel.font = UIFont.italicSystemFont(ofSize: lastNameLabel.font.pointSize)
                lastNameLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your Last Name"))
                return
            }
            guard newUser.streetAddress != nil || newUser.streetAddress != "" else {
                streetAddressLabel.font = UIFont.italicSystemFont(ofSize: streetAddressLabel.font.pointSize)
                streetAddressLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your Street Address"))
                return
            }
            guard newUser.city != nil || newUser.city != "" else {
                cityLabel.font = UIFont.italicSystemFont(ofSize: cityLabel.font.pointSize)
                cityLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your City"))
                return
            }
            guard newUser.state != nil || newUser.state != "" else {
                stateLabel.font = UIFont.italicSystemFont(ofSize: stateLabel.font.pointSize)
                stateLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your State"))
                return
            }
            guard newUser.zipCode != nil || newUser.zipCode != "" else {
                zipCodeLabel.font = UIFont.italicSystemFont(ofSize: zipCodeLabel.font.pointSize)
                zipCodeLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your ZIP Code"))
                return
            }
            guard newUser.socialSecurityNumber != nil || newUser.socialSecurityNumber != "" else {
                socialSecurityNumberLabel.font = UIFont.italicSystemFont(ofSize: socialSecurityNumberLabel.font.pointSize)
                socialSecurityNumberLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your Social Security Number"))
                return
            }
            
            delegate?.entrantPassed(entrant: newUser)
        
        } else if subNavOption4.currentTitle == ContractorSubNav.proj2001.rawValue && subNavOption4.isSelected == true {
            
            guard let newUser = ContractEmployeeSource(areaAccess: [.office], ridePrivileges: [.none], discountAccess: [.none], discountAmount: [.none], requiredInformation: [.personal], managementTier: [.none], dateOfBirth: dateOfBirth.text, firstName: firstName.text, lastName: lastName.text, streetAddress: streetAddress.text, city: city.text, state: state.text, zipCode: zipCode.text, socialSecurityNumber: socialSecurityNumber.text, company: nil, projectNumber: ContractorSubNav.proj2001.rawValue, dateOfVisit: nil), newUser.dateOfBirth != nil || newUser.dateOfBirth != "" else {
                dateOfBirthLabel.font = UIFont.italicSystemFont(ofSize: dateOfBirthLabel.font.pointSize)
                dateOfBirthLabel.textColor = UIColor.red
                print(ErrorSource.missingBirthdate(description: "Please enter your Date of Birth"))
                return
            }
            guard newUser.firstName != nil || newUser.firstName == "" else {
                firstNameLabel.font = UIFont.italicSystemFont(ofSize: firstNameLabel.font.pointSize)
                firstNameLabel.textColor = UIColor.red
                print(ErrorSource.missingFirstName(description: "Please enter your First Name"))
                return
            }
            guard newUser.lastName != nil || newUser.lastName != "" else {
                lastNameLabel.font = UIFont.italicSystemFont(ofSize: lastNameLabel.font.pointSize)
                lastNameLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your Last Name"))
                return
            }
            guard newUser.streetAddress != nil || newUser.streetAddress != "" else {
                streetAddressLabel.font = UIFont.italicSystemFont(ofSize: streetAddressLabel.font.pointSize)
                streetAddressLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your Street Address"))
                return
            }
            guard newUser.city != nil || newUser.city != "" else {
                cityLabel.font = UIFont.italicSystemFont(ofSize: cityLabel.font.pointSize)
                cityLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your City"))
                return
            }
            guard newUser.state != nil || newUser.state != "" else {
                stateLabel.font = UIFont.italicSystemFont(ofSize: stateLabel.font.pointSize)
                stateLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your State"))
                return
            }
            guard newUser.zipCode != nil || newUser.zipCode != "" else {
                zipCodeLabel.font = UIFont.italicSystemFont(ofSize: zipCodeLabel.font.pointSize)
                zipCodeLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your ZIP Code"))
                return
            }
            guard newUser.socialSecurityNumber != nil || newUser.socialSecurityNumber != "" else {
                socialSecurityNumberLabel.font = UIFont.italicSystemFont(ofSize: socialSecurityNumberLabel.font.pointSize)
                socialSecurityNumberLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your Social Security Number"))
                return
            }
            
            delegate?.entrantPassed(entrant: newUser)
            
        } else if subNavOption5.currentTitle == ContractorSubNav.proj2002.rawValue && subNavOption5.isSelected == true {
            
            guard let newUser = ContractEmployeeSource(areaAccess: [.kitchen, .maintenance], ridePrivileges: [.none], discountAccess: [.none], discountAmount: [.none], requiredInformation: [.personal], managementTier: [.none], dateOfBirth: dateOfBirth.text, firstName: firstName.text, lastName: lastName.text, streetAddress: streetAddress.text, city: city.text, state: state.text, zipCode: zipCode.text, socialSecurityNumber: socialSecurityNumber.text, company: nil, projectNumber: ContractorSubNav.proj2002.rawValue, dateOfVisit: nil), newUser.dateOfBirth != nil || newUser.dateOfBirth != "" else {
                dateOfBirthLabel.font = UIFont.italicSystemFont(ofSize: dateOfBirthLabel.font.pointSize)
                dateOfBirthLabel.textColor = UIColor.red
                print(ErrorSource.missingBirthdate(description: "Please enter your Date of Birth"))
                return
            }
            guard newUser.firstName != nil || newUser.firstName == "" else {
                firstNameLabel.font = UIFont.italicSystemFont(ofSize: firstNameLabel.font.pointSize)
                firstNameLabel.textColor = UIColor.red
                print(ErrorSource.missingFirstName(description: "Please enter your First Name"))
                return
            }
            guard newUser.lastName != nil || newUser.lastName != "" else {
                lastNameLabel.font = UIFont.italicSystemFont(ofSize: lastNameLabel.font.pointSize)
                lastNameLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your Last Name"))
                return
            }
            guard newUser.streetAddress != nil || newUser.streetAddress != "" else {
                streetAddressLabel.font = UIFont.italicSystemFont(ofSize: streetAddressLabel.font.pointSize)
                streetAddressLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your Street Address"))
                return
            }
            guard newUser.city != nil || newUser.city != "" else {
                cityLabel.font = UIFont.italicSystemFont(ofSize: cityLabel.font.pointSize)
                cityLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your City"))
                return
            }
            guard newUser.state != nil || newUser.state != "" else {
                stateLabel.font = UIFont.italicSystemFont(ofSize: stateLabel.font.pointSize)
                stateLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your State"))
                return
            }
            guard newUser.zipCode != nil || newUser.zipCode != "" else {
                zipCodeLabel.font = UIFont.italicSystemFont(ofSize: zipCodeLabel.font.pointSize)
                zipCodeLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your ZIP Code"))
                return
            }
            guard newUser.socialSecurityNumber != nil || newUser.socialSecurityNumber != "" else {
                socialSecurityNumberLabel.font = UIFont.italicSystemFont(ofSize: socialSecurityNumberLabel.font.pointSize)
                socialSecurityNumberLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your Social Security Number"))
                return
            }
            
            delegate?.entrantPassed(entrant: newUser)
        
        } else if subNavOption1.currentTitle == Vendors.acme.rawValue && subNavOption1.isSelected == true {
            
            guard let newUser = VendorSource(areaAccess: [.kitchen], ridePrivileges: [.none], discountAccess: [.none], discountAmount: [.none], requiredInformation: [.business], managementTier: [.none], dateOfBirth: dateOfBirth.text, firstName: firstName.text, lastName: lastName.text, streetAddress: nil, city: nil, state: nil, zipCode: nil, socialSecurityNumber: nil, company: Vendors.acme.rawValue, projectNumber: nil, dateOfVisit: nil), newUser.dateOfBirth != nil || newUser.dateOfBirth != "" else {
                dateOfBirthLabel.font = UIFont.italicSystemFont(ofSize: dateOfBirthLabel.font.pointSize)
                dateOfBirthLabel.textColor = UIColor.red
                print(ErrorSource.missingBirthdate(description: "Please enter your Date of Birth"))
                return
            }
            
            guard newUser.firstName != nil || newUser.firstName == "" else {
                firstNameLabel.font = UIFont.italicSystemFont(ofSize: firstNameLabel.font.pointSize)
                firstNameLabel.textColor = UIColor.red
                print(ErrorSource.missingFirstName(description: "Please enter your First Name"))
                return
            }
            
            guard newUser.lastName != nil || newUser.lastName != "" else {
                lastNameLabel.font = UIFont.italicSystemFont(ofSize: lastNameLabel.font.pointSize)
                lastNameLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your Last Name"))
                return
            }
            
            delegate?.entrantPassed(entrant: newUser)
        
        } else if subNavOption2.currentTitle == Vendors.orkin.rawValue && subNavOption2.isSelected == true {
            
            guard let newUser = VendorSource(areaAccess: [.amusement, .rideControl, .kitchen], ridePrivileges: [.none], discountAccess: [.none], discountAmount: [.none], requiredInformation: [.business], managementTier: [.none], dateOfBirth: dateOfBirth.text, firstName: firstName.text, lastName: lastName.text, streetAddress: nil, city: nil, state: nil, zipCode: nil, socialSecurityNumber: nil, company: Vendors.orkin.rawValue, projectNumber: nil, dateOfVisit: nil), newUser.dateOfBirth != nil || newUser.dateOfBirth != "" else {
                dateOfBirthLabel.font = UIFont.italicSystemFont(ofSize: dateOfBirthLabel.font.pointSize)
                dateOfBirthLabel.textColor = UIColor.red
                print(ErrorSource.missingBirthdate(description: "Please enter your Date of Birth"))
                return
            }
            guard newUser.firstName != nil || newUser.firstName == "" else {
                firstNameLabel.font = UIFont.italicSystemFont(ofSize: firstNameLabel.font.pointSize)
                firstNameLabel.textColor = UIColor.red
                print(ErrorSource.missingFirstName(description: "Please enter your First Name"))
                return
            }
            guard newUser.lastName != nil || newUser.lastName != "" else {
                lastNameLabel.font = UIFont.italicSystemFont(ofSize: lastNameLabel.font.pointSize)
                lastNameLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your Last Name"))
                return
            }
            
            delegate?.entrantPassed(entrant: newUser)
        
        } else if subNavOption3.currentTitle == Vendors.fedex.rawValue && subNavOption3.isSelected == true {
            
            guard let newUser = VendorSource(areaAccess: [.maintenance, .office], ridePrivileges: [.none], discountAccess: [.none], discountAmount: [.none], requiredInformation: [.business], managementTier: [.none], dateOfBirth: dateOfBirth.text, firstName: firstName.text, lastName: lastName.text, streetAddress: nil, city: nil, state: nil, zipCode: nil, socialSecurityNumber: nil, company: Vendors.fedex.rawValue, projectNumber: nil, dateOfVisit: nil), newUser.dateOfBirth != nil || newUser.dateOfBirth != "" else {
                dateOfBirthLabel.font = UIFont.italicSystemFont(ofSize: dateOfBirthLabel.font.pointSize)
                dateOfBirthLabel.textColor = UIColor.red
                print(ErrorSource.missingBirthdate(description: "Please enter your Date of Birth"))
                return
            }
            guard newUser.firstName != nil || newUser.firstName == "" else {
                firstNameLabel.font = UIFont.italicSystemFont(ofSize: firstNameLabel.font.pointSize)
                firstNameLabel.textColor = UIColor.red
                print(ErrorSource.missingFirstName(description: "Please enter your First Name"))
                return
            }
            guard newUser.lastName != nil || newUser.lastName != "" else {
                lastNameLabel.font = UIFont.italicSystemFont(ofSize: lastNameLabel.font.pointSize)
                lastNameLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your Last Name"))
                return
            }
            
            delegate?.entrantPassed(entrant: newUser)

        } else if subNavOption4.currentTitle == Vendors.nwElectrical.rawValue && subNavOption4.isSelected == true {
            
            guard let newUser = VendorSource(areaAccess: [.amusement, .kitchen, .maintenance, .office, .rideControl], ridePrivileges: [.none], discountAccess: [.none], discountAmount: [.none], requiredInformation: [.business], managementTier: [.none], dateOfBirth: dateOfBirth.text, firstName: firstName.text, lastName: lastName.text, streetAddress: nil, city: nil, state: nil, zipCode: nil, socialSecurityNumber: nil, company: Vendors.nwElectrical.rawValue, projectNumber: nil, dateOfVisit: nil), newUser.dateOfBirth != nil || newUser.dateOfBirth != "" else {
                dateOfBirthLabel.font = UIFont.italicSystemFont(ofSize: dateOfBirthLabel.font.pointSize)
                dateOfBirthLabel.textColor = UIColor.red
                print(ErrorSource.missingBirthdate(description: "Please enter your Date of Birth"))
                return
            }
            guard newUser.firstName != nil || newUser.firstName == "" else {
                firstNameLabel.font = UIFont.italicSystemFont(ofSize: firstNameLabel.font.pointSize)
                firstNameLabel.textColor = UIColor.red
                print(ErrorSource.missingFirstName(description: "Please enter your First Name"))
                return
            }
            guard newUser.lastName != nil || newUser.lastName != "" else {
                lastNameLabel.font = UIFont.italicSystemFont(ofSize: lastNameLabel.font.pointSize)
                lastNameLabel.textColor = UIColor.red
                print(ErrorSource.missingLastName(description: "Please enter your Last Name"))
                return
            }
            
            delegate?.entrantPassed(entrant: newUser)
        
        }
        
        else {
            labelFontReset()
            
        }
    }

    
    @IBAction func populateData(_ sender: ButtonDesign) {
        
        
        func increment () {
            counter += 1
        }
        
        // function for textfiled population
        // test cases to populate app textfields
        
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
        
        textFieldPopulater()
        increment()
        print(counter)
        
    }

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(MainViewController.keyboardWillShow(_:)), name: Notification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(MainViewController.keyboardWillHide(_:)), name: Notification.Name.UIKeyboardWillHide, object: nil)
        
        

        // Do any additional setup after loading the view.
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // alert function for user data input errors
    func createAlert (title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: { (action) in alert.dismiss(animated: true, completion: nil)}))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    // function to reset UILabel font to neutral
    func labelFontReset () {
        
        // font style reset
        dateOfBirthLabel.font = UIFont.boldSystemFont(ofSize: dateOfBirthLabel.font.pointSize)
        socialSecurityNumberLabel.font = UIFont.boldSystemFont(ofSize: socialSecurityNumberLabel.font.pointSize)
        projectNumberLabel.font = UIFont.boldSystemFont(ofSize: projectNumberLabel.font.pointSize)
        firstNameLabel.font = UIFont.boldSystemFont(ofSize: firstNameLabel.font.pointSize)
        lastNameLabel.font = UIFont.boldSystemFont(ofSize: lastNameLabel.font.pointSize)
        companyLabel.font = UIFont.boldSystemFont(ofSize: companyLabel.font.pointSize)
        streetAddressLabel.font = UIFont.boldSystemFont(ofSize: streetAddressLabel.font.pointSize)
        cityLabel.font = UIFont.boldSystemFont(ofSize: cityLabel.font.pointSize)
        stateLabel.font = UIFont.boldSystemFont(ofSize: stateLabel.font.pointSize)
        zipCodeLabel.font = UIFont.boldSystemFont(ofSize: zipCodeLabel.font.pointSize)
        
        // font color reset
        dateOfBirthLabel.textColor = UIColor.black
        socialSecurityNumberLabel.textColor = UIColor.black
        projectNumberLabel.textColor = UIColor.black
        firstNameLabel.textColor = UIColor.black
        lastNameLabel.textColor = UIColor.black
        companyLabel.textColor = UIColor.black
        streetAddressLabel.textColor = UIColor.black
        cityLabel.textColor = UIColor.black
        stateLabel.textColor = UIColor.black
        zipCodeLabel.textColor = UIColor.black
        
        
    }
    
    
    
    
    
// possible user input error function
 
 



    // allows me to animate stack views and their display
    private func animateView(view: UIView, toHidden hidden: Bool) {
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 5.0, options: UIViewAnimationOptions(), animations: {() -> Void in view.isHidden = hidden }, completion: nil)
        
    }
    
 // finish up here... you have a bunch of constraints to add to move some textfields around
    func keyboardWillShow(_ notification: Notification) {
        print("Keyboard hooray!")
        if let info = notification.userInfo, let keyboardFrame = info [UIKeyboardFrameEndUserInfoKey] as? NSValue {
            let frame = keyboardFrame.cgRectValue
            //UILabelOutlet.constant = frame.size.height + 10
            
            UIView.animate(withDuration: 0.8) {
                self.view.layoutIfNeeded()
            }
        }
        
    }
    
    func keyboardWillHide(_ notification: Notification) {
        
        print("Keyboard hidden hooray!")
        
            //UILabelOutlet.constant = original value set in interface builder
            
            UIView.animate(withDuration: 0.8) {
                self.view.layoutIfNeeded()
            }
        }
    
    
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }



}

extension MainViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}
