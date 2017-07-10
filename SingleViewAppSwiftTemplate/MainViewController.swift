//
//  MainViewController.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Michael Guatambu Davis on 5/24/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

/*protocol MainViewControllerDelegate: class {
    func entrantPassed(entrant: EntrantTypeable)
}*/


import UIKit

class MainViewController: UIViewController {
    
    var counter = 0
    var newUser: PersonSource?
    
    //weak var delegate: MainViewControllerDelegate?
    
    
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
        
        projectNumber.text = ""
        company.text = ""
        
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
        
        subNavOption1.setTitle(EntrantType.child.rawValue, for: .normal)
        subNavOption2.setTitle(EntrantType.adult.rawValue, for: .normal)
        subNavOption3.setTitle(EntrantType.senior.rawValue, for: .normal)
        subNavOption4.setTitle(EntrantType.vip.rawValue, for: .normal)
        subNavOption5.setTitle(EntrantType.seasonPass.rawValue, for: .normal)
        
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
        
        projectNumber.text = ""
        company.text = ""
        
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
        
        subNavOption1.setTitle(EntrantType.employeeFood.rawValue, for: .normal)
        subNavOption2.setTitle(EntrantType.employeeRide.rawValue, for: .normal)
        subNavOption3.setTitle(EntrantType.employeeMaintenance.rawValue, for: .normal)
        
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
        
        projectNumber.text = ""
        company.text = ""
        
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
        
        subNavOption1.setTitle(EntrantType.managerShift.rawValue, for: .normal)
        subNavOption2.setTitle(EntrantType.managerGeneral.rawValue, for: .normal)
        subNavOption3.setTitle(EntrantType.managerSenior.rawValue, for: .normal)
        
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
        
        projectNumber.text = ""
        company.text = ""
        
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
        
        subNavOption1.setTitle(EntrantType.contractorProj1001.rawValue, for: .normal)
        subNavOption2.setTitle(EntrantType.contractorProj1002.rawValue, for: .normal)
        subNavOption3.setTitle(EntrantType.contractorProj1003.rawValue, for: .normal)
        subNavOption4.setTitle(EntrantType.contractorProj2001.rawValue, for: .normal)
        subNavOption5.setTitle(EntrantType.contractorProj2002.rawValue, for: .normal)
        
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
        
        projectNumber.text = ""
        company.text = ""
        
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
        
        subNavOption1.setTitle(EntrantType.vendorAcme.rawValue, for: .normal)
        subNavOption2.setTitle(EntrantType.vendorOrkin.rawValue, for: .normal)
        subNavOption3.setTitle(EntrantType.vendorFedEx.rawValue, for: .normal)
        subNavOption4.setTitle(EntrantType.vendorNWElectrical.rawValue, for: .normal)
        
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
        
        if subNavOption1.currentTitle == EntrantType.child.rawValue && subNavOption1.isSelected == true {
            
            projectNumber.text = ""
            company.text = ""
            
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
            
        } else if (subNavOption1.currentTitle == EntrantType.employeeFood.rawValue || subNavOption1.currentTitle == EntrantType.managerShift.rawValue) && subNavOption1.isSelected == true {
            
            projectNumber.text = ""
            company.text = ""
            
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
            
        } else if subNavOption1.currentTitle == EntrantType.contractorProj1001.rawValue && subNavOption1.isSelected == true {
            
            projectNumber.text = "1001"
            company.text = ""
        
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
            
        } else if subNavOption1.currentTitle == EntrantType.vendorAcme.rawValue && subNavOption1.isSelected == true {
            
            projectNumber.text = ""
            company.text = "Acme"
        
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
        
        if subNavOption2.currentTitle == EntrantType.adult.rawValue && subNavOption2.isSelected == true {
            
            projectNumber.text = ""
            company.text = ""
            
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
            
        } else if (subNavOption2.currentTitle == EntrantType.employeeRide.rawValue || subNavOption2.currentTitle == EntrantType.managerGeneral.rawValue) && subNavOption2.isSelected == true {
            
            projectNumber.text = ""
            company.text = ""
            
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
        
        } else if subNavOption2.currentTitle == EntrantType.contractorProj1002.rawValue && subNavOption2.isSelected == true {
            
            projectNumber.text = "1002"
            company.text = ""
            
            
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
            
        } else if subNavOption2.currentTitle == EntrantType.vendorOrkin.rawValue && subNavOption2.isSelected == true {
            
            projectNumber.text = ""
            company.text = "Orkin"
            
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
        
        if subNavOption3.currentTitle == EntrantType.senior.rawValue && subNavOption3.isSelected == true && guestNavButton.isSelected == true {
            
            projectNumber.text = ""
            company.text = ""
            
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
            
        } else if (subNavOption3.currentTitle == EntrantType.employeeRide.rawValue || subNavOption3.currentTitle == EntrantType.senior.rawValue) && subNavOption1.isSelected == true {
            
            projectNumber.text = ""
            company.text = ""
            
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
            
        } else if subNavOption3.currentTitle == EntrantType.contractorProj1003.rawValue && subNavOption3.isSelected == true {
            
            projectNumber.text = "1003"
            company.text = ""
            
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
            
        } else if subNavOption3.currentTitle == EntrantType.vendorFedEx.rawValue && subNavOption3.isSelected == true {
            
            projectNumber.text = ""
            company.text = "FedEx"
            
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
        
        if subNavOption4.currentTitle == EntrantType.vip.rawValue && subNavOption4.isSelected == true {
            
            projectNumber.text = ""
            company.text = ""
            
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
            
        } else if subNavOption4.currentTitle == EntrantType.contractorProj2001.rawValue && subNavOption4.isSelected == true {
            
            projectNumber.text = "2001"
            company.text = ""
            
            
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
            
        } else if subNavOption4.currentTitle == EntrantType.vendorNWElectrical.rawValue && subNavOption4.isSelected == true {
            
            projectNumber.text = ""
            company.text = "NW Electrical"
            
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
        
        if subNavOption5.currentTitle == EntrantType.seasonPass.rawValue && subNavOption5.isSelected == true {
            
            projectNumber.text = ""
            company.text = ""
            
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
            
        } else if subNavOption5.currentTitle == EntrantType.contractorProj2002.rawValue && subNavOption5.isSelected == true {
            
            projectNumber.text = "2002"
            company.text = ""
            
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
        
        // child Guest
        if subNavOption1.currentTitle == EntrantType.child.rawValue && subNavOption1.isSelected == true {
            
            birthdayErrorCheck()
            childGuestGenerator()

            
        // adult Guest
        } else if subNavOption2.currentTitle == EntrantType.adult.rawValue && subNavOption2.isSelected == true {
            
            let adultGuest = GuestClassicSource(dateOfVisit: Date())
            newUser = adultGuest
            print(newUser as Any)
            
         
        // senior guest
        } else if subNavOption3.currentTitle == EntrantType.senior.rawValue && subNavOption3.isSelected == true && guestNavButton.isSelected == true {
            
            birthdayErrorCheck()
            firstNameErrorCheck()
            lastNameErrorCheck()
            seniorGuestGenerator()
            
            
        // VIP Guest
        } else if subNavOption4.currentTitle == EntrantType.vip.rawValue && subNavOption4.isSelected == true {
            
            let vipGuest = GuestVIPSource(dateOfVisit: Date())
            newUser = vipGuest
            print(newUser as Any)
            
        // season pass Guest
        } else if subNavOption5.currentTitle == EntrantType.seasonPass.rawValue && subNavOption5.isSelected == true {
            
            birthdayErrorCheck()
            firstNameErrorCheck()
            lastNameErrorCheck()
            streetErrorCheck()
            cityErrorCheck()
            stateErrorCheck()
            zipErrorCheck()
            seasonPassGuestGenerator()
            
            
        // food services employee
        } else if subNavOption1.currentTitle == EntrantType.employeeFood.rawValue && subNavOption1.isSelected == true {
            
            birthdayErrorCheck()
            firstNameErrorCheck()
            lastNameErrorCheck()
            streetErrorCheck()
            cityErrorCheck()
            stateErrorCheck()
            zipErrorCheck()
            socialSecurityNumberErrorCheck()
            foodEmployeeGenerator()
        
         
        // ride services Employee
        } else if subNavOption2.currentTitle == EntrantType.employeeRide.rawValue && subNavOption2.isSelected == true {
            
            birthdayErrorCheck()
            firstNameErrorCheck()
            lastNameErrorCheck()
            streetErrorCheck()
            cityErrorCheck()
            stateErrorCheck()
            zipErrorCheck()
            socialSecurityNumberErrorCheck()
            rideServicesEmployeeGenerator()
            
        
        // maintenance Employee
        } else if subNavOption3.currentTitle == EntrantType.employeeMaintenance.rawValue && subNavOption3.isSelected == true {
            
            birthdayErrorCheck()
            firstNameErrorCheck()
            lastNameErrorCheck()
            streetErrorCheck()
            cityErrorCheck()
            stateErrorCheck()
            zipErrorCheck()
            socialSecurityNumberErrorCheck()
            maintenanceEmployeeGenerator()
            
        
        // shift Manager
        } else if subNavOption1.currentTitle == EntrantType.managerShift.rawValue && subNavOption1.isSelected == true {
            
            birthdayErrorCheck()
            firstNameErrorCheck()
            lastNameErrorCheck()
            streetErrorCheck()
            cityErrorCheck()
            stateErrorCheck()
            zipErrorCheck()
            socialSecurityNumberErrorCheck()
            shiftManagerGenerator()
            
            
        // general Manager
        } else if subNavOption2.currentTitle == EntrantType.managerGeneral.rawValue && subNavOption2.isSelected == true {
            
            birthdayErrorCheck()
            firstNameErrorCheck()
            lastNameErrorCheck()
            streetErrorCheck()
            cityErrorCheck()
            stateErrorCheck()
            zipErrorCheck()
            socialSecurityNumberErrorCheck()
            generalManagerGenerator()
        
        // senior manager
        } else if subNavOption3.currentTitle == EntrantType.managerSenior.rawValue && subNavOption3.isSelected == true {
            
            birthdayErrorCheck()
            firstNameErrorCheck()
            lastNameErrorCheck()
            streetErrorCheck()
            cityErrorCheck()
            stateErrorCheck()
            zipErrorCheck()
            socialSecurityNumberErrorCheck()
            seniorManagerGenerator()
            
            
        // contractor Proj #1001
        } else if subNavOption1.currentTitle == EntrantType.contractorProj1001.rawValue && subNavOption1.isSelected == true {
            
            birthdayErrorCheck()
            firstNameErrorCheck()
            lastNameErrorCheck()
            streetErrorCheck()
            cityErrorCheck()
            stateErrorCheck()
            zipErrorCheck()
            socialSecurityNumberErrorCheck()
            contractor1001Generator()
           
            
        // contractor Proj #1002
        } else if subNavOption2.currentTitle == EntrantType.contractorProj1002.rawValue && subNavOption2.isSelected == true {
            
            birthdayErrorCheck()
            firstNameErrorCheck()
            lastNameErrorCheck()
            streetErrorCheck()
            cityErrorCheck()
            stateErrorCheck()
            zipErrorCheck()
            socialSecurityNumberErrorCheck()
            contractor1002Generator()
            
         
        // contractor Proj #1003
        } else if subNavOption3.currentTitle == EntrantType.contractorProj1003.rawValue && subNavOption3.isSelected == true {
            
            birthdayErrorCheck()
            firstNameErrorCheck()
            lastNameErrorCheck()
            streetErrorCheck()
            cityErrorCheck()
            stateErrorCheck()
            zipErrorCheck()
            socialSecurityNumberErrorCheck()
            contractor1003Generator()
            
        // contractor Proj #2001
        } else if subNavOption4.currentTitle == EntrantType.contractorProj2001.rawValue && subNavOption4.isSelected == true {
            
            birthdayErrorCheck()
            firstNameErrorCheck()
            lastNameErrorCheck()
            streetErrorCheck()
            cityErrorCheck()
            stateErrorCheck()
            zipErrorCheck()
            socialSecurityNumberErrorCheck()
            contractor2001Generator()
            
            
        // contractor Proj #2002
        } else if subNavOption5.currentTitle == EntrantType.contractorProj2002.rawValue && subNavOption5.isSelected == true {
            
            birthdayErrorCheck()
            firstNameErrorCheck()
            lastNameErrorCheck()
            streetErrorCheck()
            cityErrorCheck()
            stateErrorCheck()
            zipErrorCheck()
            socialSecurityNumberErrorCheck()
            contractor2002Generator()
            
        
        // vendor Acme
        } else if subNavOption1.currentTitle == EntrantType.vendorAcme.rawValue && subNavOption1.isSelected == true {
            
            birthdayErrorCheck()
            firstNameErrorCheck()
            lastNameErrorCheck()
            acmeVendorGenerator()
            
        
        // vendor Orkin
        } else if subNavOption2.currentTitle == EntrantType.vendorOrkin.rawValue && subNavOption2.isSelected == true {
            
            birthdayErrorCheck()
            firstNameErrorCheck()
            lastNameErrorCheck()
            orkinVendorGenerator()
            
        
        // vendor FedEx
        } else if subNavOption3.currentTitle == EntrantType.vendorFedEx.rawValue && subNavOption3.isSelected == true {
            
            birthdayErrorCheck()
            firstNameErrorCheck()
            lastNameErrorCheck()
            fedexVendorGenerator()
        
        // vendor NW Electrical
        } else if subNavOption4.currentTitle == EntrantType.vendorNWElectrical.rawValue && subNavOption4.isSelected == true {
            
            birthdayErrorCheck()
            firstNameErrorCheck()
            lastNameErrorCheck()
            nwelectricalVendorGenerator()
        
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
                
                subNavOption1.setTitle(EntrantType.employeeFood.rawValue, for: .normal)
                subNavOption2.setTitle(EntrantType.employeeRide.rawValue, for: .normal)
                subNavOption3.setTitle(EntrantType.employeeMaintenance.rawValue, for: .normal)
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

                subNavOption1.setTitle(EntrantType.child.rawValue, for: .normal)
                subNavOption2.setTitle(EntrantType.adult.rawValue, for: .normal)
                subNavOption3.setTitle(EntrantType.senior.rawValue, for: .normal)
                subNavOption4.setTitle(EntrantType.vip.rawValue, for: .normal)
                subNavOption5.setTitle(EntrantType.seasonPass.rawValue, for: .normal)
                
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
                
                subNavOption1.setTitle(EntrantType.vendorAcme.rawValue, for: .normal)
                subNavOption2.setTitle(EntrantType.vendorOrkin.rawValue, for: .normal)
                subNavOption3.setTitle(EntrantType.vendorFedEx.rawValue, for: .normal)
                subNavOption4.setTitle(EntrantType.vendorNWElectrical.rawValue, for: .normal)
                
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
                
                subNavOption1.setTitle(EntrantType.contractorProj1001.rawValue, for: .normal)
                subNavOption2.setTitle(EntrantType.contractorProj1002.rawValue, for: .normal)
                subNavOption3.setTitle(EntrantType.contractorProj1003.rawValue, for: .normal)
                subNavOption4.setTitle(EntrantType.contractorProj2001.rawValue, for: .normal)
                subNavOption5.setTitle(EntrantType.contractorProj2002.rawValue, for: .normal)
                
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
                
                subNavOption1.setTitle(EntrantType.managerShift.rawValue, for: .normal)
                subNavOption2.setTitle(EntrantType.managerGeneral.rawValue, for: .normal)
                subNavOption3.setTitle(EntrantType.managerSenior.rawValue, for: .normal)
                
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
        /*
        NotificationCenter.default.addObserver(self, selector: #selector(MainViewController.keyboardWillShow(_:)), name: Notification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(MainViewController.keyboardWillHide(_:)), name: Notification.Name.UIKeyboardWillHide, object: nil)
        */
        

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
    
    
    /* FONT DIPLAY RESET */
    
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

    
    /* ALL THINGS SEGUE RELATED */
    
    // error check abort segue segue

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let createNewPassViewController = segue.destination as? CreateNewPassViewController {
            let entrant = newUser
            createNewPassViewController.entrant = entrant
        }
    }
    
    
    
    


 
 

    /* STACKVIEW ANUIMATION (if used) */

    // allows me to animate stack views and their display
    private func animateView(view: UIView, toHidden hidden: Bool) {
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 5.0, options: UIViewAnimationOptions(), animations: {() -> Void in view.isHidden = hidden }, completion: nil)
        
    }
    
    
    /* ENTRANT GENERATOR FUNCTIONS */
    
    func childGuestGenerator() -> PersonSource? {
        let childGuest = GuestChildSource(dateOfBirth: dateOfBirth.text, dateOfVisit: Date())
        newUser = childGuest
        return childGuest
    }
    
    func seniorGuestGenerator() -> PersonSource? {
        let seniorGuest = GuestSeniorSource(dateOfBirth: dateOfBirth.text, firstName: firstName.text, lastName: lastName.text, dateOfVisit: Date())
        newUser = seniorGuest
        return seniorGuest
    }
    
    func seasonPassGuestGenerator() -> PersonSource? {
        let seasonPassGuest = GuestSeasonPassSource(dateOfBirth: dateOfBirth.text, firstName: firstName.text, lastName: lastName.text, streetAddress: streetAddress.text, city: city.text, state: state.text, zipCode: zipCode.text, dateOfVisit: Date())
        newUser = seasonPassGuest
        return seasonPassGuest
    }
    
    func foodEmployeeGenerator() -> PersonSource? {
        let foodEmployee = HourlyFoodEmployeeSource(dateOfBirth: dateOfBirth.text, firstName: firstName.text, lastName: lastName.text, streetAddress: streetAddress.text, city: city.text, state: state.text, zipCode: zipCode.text, socialSecurityNumber: socialSecurityNumber.text, dateOfVisit: Date())
        newUser = foodEmployee
        return foodEmployee
    }
    
    func rideServicesEmployeeGenerator() -> PersonSource? {
        let rideEmployee = HourlyRideServicesEmployeeSource(dateOfBirth: dateOfBirth.text, firstName: firstName.text, lastName: lastName.text, streetAddress: streetAddress.text, city: city.text, state: state.text, zipCode: zipCode.text, socialSecurityNumber: socialSecurityNumber.text, dateOfVisit: Date())
        newUser = rideEmployee
        return rideEmployee
    }
    
    func maintenanceEmployeeGenerator() -> PersonSource? {
        let maintenanceEmployee = HourlyMaintenanceEmployeeSource(dateOfBirth: dateOfBirth.text, firstName: firstName.text, lastName: lastName.text, streetAddress: streetAddress.text, city: city.text, state: state.text, zipCode: zipCode.text, socialSecurityNumber: socialSecurityNumber.text, dateOfVisit: Date())
        newUser = maintenanceEmployee
        return maintenanceEmployee
    }
    
    func shiftManagerGenerator() -> PersonSource? {
        let shiftManager = ManagerShiftSource(dateOfBirth: dateOfBirth.text, firstName: firstName.text, lastName: lastName.text, streetAddress: streetAddress.text, city: city.text, state: state.text, zipCode: zipCode.text, socialSecurityNumber: socialSecurityNumber.text, dateOfVisit: Date())
        newUser = shiftManager
        return shiftManager
    }
    
    func generalManagerGenerator() -> PersonSource? {
        let generalManager = ManagerGeneralSource(dateOfBirth: dateOfBirth.text, firstName: firstName.text, lastName: lastName.text, streetAddress: streetAddress.text, city: city.text, state: state.text, zipCode: zipCode.text, socialSecurityNumber: socialSecurityNumber.text, dateOfVisit: Date())
        newUser = generalManager
        return generalManager
    }
    
    func seniorManagerGenerator() -> PersonSource? {
        let seniorManager = ManagerSeniorSource(dateOfBirth: dateOfBirth.text, firstName: firstName.text, lastName: lastName.text, streetAddress: streetAddress.text, city: city.text, state: state.text, zipCode: zipCode.text, socialSecurityNumber: socialSecurityNumber.text, dateOfVisit: Date())
        newUser = seniorManager
        return seniorManager
    }
    
    func contractor1001Generator() -> PersonSource? {
        let contractor1001 = ContractorProj1001Source(dateOfBirth: dateOfBirth.text, firstName: firstName.text, lastName: lastName.text, streetAddress: streetAddress.text, city: city.text, state: state.text, zipCode: zipCode.text, socialSecurityNumber: socialSecurityNumber.text, dateOfVisit: Date())
        newUser = contractor1001
        return contractor1001
    }
    
    func contractor1002Generator() -> PersonSource? {
        let contractor1002 = ContractorProj1002Source(dateOfBirth: dateOfBirth.text, firstName: firstName.text, lastName: lastName.text, streetAddress: streetAddress.text, city: city.text, state: state.text, zipCode: zipCode.text, socialSecurityNumber: socialSecurityNumber.text, dateOfVisit: Date())
        newUser = contractor1002
        return contractor1002
    }
    
    func contractor1003Generator() -> PersonSource? {
        let contractor1003 = ContractorProj1003Source(dateOfBirth: dateOfBirth.text, firstName: firstName.text, lastName: lastName.text, streetAddress: streetAddress.text, city: city.text, state: state.text, zipCode: zipCode.text, socialSecurityNumber: socialSecurityNumber.text, dateOfVisit: Date())
        newUser = contractor1003
        return contractor1003
    }
    
    func contractor2001Generator() -> PersonSource? {
        let contractor2001 = ContractorProj2001Source(dateOfBirth: dateOfBirth.text, firstName: firstName.text, lastName: lastName.text, streetAddress: streetAddress.text, city: city.text, state: state.text, zipCode: zipCode.text, socialSecurityNumber: socialSecurityNumber.text, dateOfVisit: Date())
        newUser = contractor2001
        return contractor2001
    }
    
    func contractor2002Generator() -> PersonSource? {
        let contractor2002 = ContractorProj2002Source(dateOfBirth: dateOfBirth.text, firstName: firstName.text, lastName: lastName.text, streetAddress: streetAddress.text, city: city.text, state: state.text, zipCode: zipCode.text, socialSecurityNumber: socialSecurityNumber.text, dateOfVisit: Date())
        newUser = contractor2002
        return contractor2002
    }
    
    func acmeVendorGenerator() -> PersonSource? {
        let acmeVendor = VendorAcmeSource(dateOfBirth: dateOfBirth.text, firstName: firstName.text, lastName: lastName.text, company: company.text, dateOfVisit: Date())
        newUser = acmeVendor
        return acmeVendor
    }
    
    func orkinVendorGenerator() -> PersonSource? {
        let orkinVendor = VendorOrkinSource(dateOfBirth: dateOfBirth.text, firstName: firstName.text, lastName: lastName.text, company: company.text, dateOfVisit: Date())
        newUser = orkinVendor
        return orkinVendor
    }
    
    func fedexVendorGenerator() -> PersonSource? {
        let fedexVendor = VendorFedExSource(dateOfBirth: dateOfBirth.text, firstName: firstName.text, lastName: lastName.text, company: company.text, dateOfVisit: Date())
        newUser = fedexVendor
        return fedexVendor
    }
    
    func nwelectricalVendorGenerator() -> PersonSource? {
        let nwelectricalVendor = VendorNWElectricalSource(dateOfBirth: dateOfBirth.text, firstName: firstName.text, lastName: lastName.text, company: company.text, dateOfVisit: Date())
        newUser = nwelectricalVendor
        return nwelectricalVendor
    }
    
    
    
    
    /* TEXTFIELD ERROR CHECKS */
    
    
    func birthdayErrorCheck() {
        guard let dob = dateOfBirth.text, dob != "" else {
            dateOfBirthLabel.font = UIFont.italicSystemFont(ofSize: dateOfBirthLabel.font.pointSize)
            dateOfBirthLabel.textColor = UIColor.red
            let birthdayErrorMessage = ErrorSource.missingBirthdate(description: "Please enter your Date of Birth").errorMessage()
            print("\(birthdayErrorMessage)")
            return
        }
        performSegue(withIdentifier: "genPass", sender: self)
        print("date of birth is valid")
    }
    
    
    func socialSecurityNumberErrorCheck() {
        guard let ssn = socialSecurityNumber.text, ssn != "" else {
            socialSecurityNumberLabel.font = UIFont.italicSystemFont(ofSize: socialSecurityNumberLabel.font.pointSize)
            socialSecurityNumberLabel.textColor = UIColor.red
            let ssnErrorMessage = ErrorSource.missingSsn(description: "Please enter your Social Security Number").errorMessage()
            print("\(ssnErrorMessage)")
            return
        }
        performSegue(withIdentifier: "genPass", sender: self)
        print("ssn is valid")
    }


    func firstNameErrorCheck() {
        guard let name1 = firstName.text, name1 != "" else {
            firstNameLabel.font = UIFont.italicSystemFont(ofSize: firstNameLabel.font.pointSize)
            firstNameLabel.textColor = UIColor.red
            let firstNameErrorMessage = ErrorSource.missingFirstName(description: "Please enter your First Name").errorMessage()
            print("\(firstNameErrorMessage)")
            return
        }
        performSegue(withIdentifier: "genPass", sender: self)
        print("first name is valid")
    }
    
    
    func lastNameErrorCheck() {
        guard let name2 = lastName.text, name2 != "" else {
            firstNameLabel.font = UIFont.italicSystemFont(ofSize: firstNameLabel.font.pointSize)
            firstNameLabel.textColor = UIColor.red
            let lastNameErrorMessage = ErrorSource.missingLastName(description: "Please enter your Last Name").errorMessage()
            print("\(lastNameErrorMessage)")
            return
        }
        performSegue(withIdentifier: "genPass", sender: self)
        print("last nameis valid")
    }
    
    func streetErrorCheck() {
        guard let street = streetAddress.text, street != "" else {
            streetAddressLabel.font = UIFont.italicSystemFont(ofSize: streetAddressLabel.font.pointSize)
            streetAddressLabel.textColor = UIColor.red
            let streetErrorMessage = ErrorSource.missingStreet(description: "Please enter your Street Address").errorMessage()
            print("\(streetErrorMessage)")
            return
        }
        performSegue(withIdentifier: "genPass", sender: self)
        print("street address is valid")
    }
    
    
    func cityErrorCheck() {
        guard let theCity = city.text, theCity != "" else {
            cityLabel.font = UIFont.italicSystemFont(ofSize: cityLabel.font.pointSize)
            cityLabel.textColor = UIColor.red
            let cityErrorMessage = ErrorSource.missingCity(description: "Please enter your City").errorMessage()
            print("\(cityErrorMessage)")
            return
        }
        performSegue(withIdentifier: "genPass", sender: self)
        print("city is valid")
    }
    
    
    func stateErrorCheck() {
        guard let theState = state.text, theState != "" else {
            stateLabel.font = UIFont.italicSystemFont(ofSize: stateLabel.font.pointSize)
            stateLabel.textColor = UIColor.red
            let stateErrorMessage = ErrorSource.missingState(description: "Please enter your State").errorMessage()
            print("\(stateErrorMessage)")
            return
        }
        performSegue(withIdentifier: "genPass", sender: self)
        print("state is valid")
    }
    
    
    func zipErrorCheck() {
        guard let zip = zipCode.text, zip != "" else {
            zipCodeLabel.font = UIFont.italicSystemFont(ofSize: zipCodeLabel.font.pointSize)
            zipCodeLabel.textColor = UIColor.red
            let zipCodeErrorMessage = ErrorSource.missingZip(description: "Please enter your ZIP Code").errorMessage()
            print("\(zipCodeErrorMessage)")
            return
        }
        performSegue(withIdentifier: "genPass", sender: self)
        print("zip code is valid")
    }

    
    
 /* EVERYTHING KEYBOARD ACTIVITY SETUP RELATED */
    
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
