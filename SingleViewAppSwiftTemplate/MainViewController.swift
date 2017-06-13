//
//  MainViewController.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Michael Guatambu Davis on 5/24/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    /* MARK: - Navigation */
    
    // Navigation @IBOutlets
    @IBOutlet weak var guestNavButton: UIButton!
    @IBOutlet weak var employeeNavButton: UIStackView!
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
        if subNavStackView.isHidden {
            animateView(view: subNavStackView, toHidden: false)
            subNavOption1.setTitle(EntrantTypeSubNav.child.rawValue, for: .normal)
            subNavOption2.setTitle(EntrantTypeSubNav.adult.rawValue, for: .normal)
            subNavOption3.setTitle(EntrantTypeSubNav.senior.rawValue, for: .normal)
            subNavOption4.setTitle(EntrantTypeSubNav.vip.rawValue, for: .normal)
            subNavOption5.setTitle(EntrantTypeSubNav.seasonPass.rawValue, for: .normal)
        } else {
            animateView(view: subNavStackView, toHidden: true)
        }
        
    }

    @IBAction func employeeNavButton(_ sender: UIButton) {
        if subNavStackView.isHidden {
            animateView(view: subNavStackView, toHidden: false)
            subNavOption1.setTitle(EntrantTypeSubNav.hourlyFood.rawValue, for: .normal)
            subNavOption2.setTitle(EntrantTypeSubNav.hourlyRide.rawValue, for: .normal)
            subNavOption3.setTitle(EntrantTypeSubNav.hourlyMaintenance.rawValue, for: .normal)
            subNavOption4.isHidden = true
            subNavOption5.isHidden = true
        } else {
            animateView(view: subNavStackView, toHidden: true)
        }
    }
    
    @IBAction func managerNavButton(_ sender: UIButton) {
        if subNavStackView.isHidden {
            animateView(view: subNavStackView, toHidden: false)
            subNavOption1.setTitle(ManagerType.shift.rawValue, for: .normal)
            subNavOption2.setTitle(ManagerType.general.rawValue, for: .normal)
            subNavOption3.setTitle(ManagerType.senior.rawValue, for: .normal)
            subNavOption4.isHidden = true
            subNavOption5.isHidden = true
        } else {
            animateView(view: subNavStackView, toHidden: true)
        }
    }
    @IBAction func contractorNavButton(_ sender: UIButton) {
        if subNavStackView.isHidden {
            animateView(view: subNavStackView, toHidden: false)
            subNavOption1.setTitle(ContractorSubNav.proj1001.rawValue, for: .normal)
            subNavOption2.setTitle(ContractorSubNav.proj1002.rawValue, for: .normal)
            subNavOption3.setTitle(ContractorSubNav.proj1003.rawValue, for: .normal)
            subNavOption4.setTitle(ContractorSubNav.proj2001.rawValue, for: .normal)
            subNavOption5.setTitle(ContractorSubNav.proj2002.rawValue, for: .normal)
        } else {
            animateView(view: subNavStackView, toHidden: true)
        }
    }
    @IBAction func vendorNavButton(_ sender: UIButton) {
        if subNavStackView.isHidden {
            animateView(view: subNavStackView, toHidden: false)
            subNavOption1.setTitle(Vendors.acme.rawValue, for: .normal)
            subNavOption2.setTitle(Vendors.orkin.rawValue, for: .normal)
            subNavOption3.setTitle(Vendors.fedex.rawValue, for: .normal)
            subNavOption4.setTitle(Vendors.nwElectrical.rawValue, for: .normal)
            subNavOption5.isHidden = true
        } else {
            animateView(view: subNavStackView, toHidden: true)
        }
    }
    
    
    // SubNavigation Buttons
    @IBAction func subNavOption1(_ sender: UIButton) {
        if subNavOption1.currentTitle == EntrantTypeSubNav.child.rawValue && subNavOption1.isSelected == true {
            
            /* UITextField appearance */
            //dateOfBirth.alpha = 0.5
            socialSecurityNumber.alpha = 0.5
            projectNumber.alpha = 0.5
            firstName.alpha = 0.5
            lastName.alpha = 0.5
            company.alpha = 0.5
            streetAddress.alpha = 0.5
            city.alpha = 0.5
            state.alpha = 0.5
            zipCode.alpha = 0.5
            
            /* UITextField Editing active/inactive */
            //dateOfBirth.allowsEditingTextAttributes = false
            socialSecurityNumber.allowsEditingTextAttributes = false
            projectNumber.allowsEditingTextAttributes = false
            firstName.allowsEditingTextAttributes = false
            lastName.allowsEditingTextAttributes = false
            company.allowsEditingTextAttributes = false
            streetAddress.allowsEditingTextAttributes = false
            city.allowsEditingTextAttributes = false
            state.allowsEditingTextAttributes = false
            zipCode.allowsEditingTextAttributes = false
        } else if (subNavOption1.currentTitle == EntrantTypeSubNav.hourlyFood.rawValue || subNavOption1.currentTitle == ManagerType.shift.rawValue)  && subNavOption1.isSelected == true {
            
            /* UITextField appearance */
            //dateOfBirth.alpha = 0.5
            //socialSecurityNumber.alpha = 0.5
            projectNumber.alpha = 0.5
            //firstName.alpha = 0.5
            //lastName.alpha = 0.5
            company.alpha = 0.5
            //streetAddress.alpha = 0.5
            //city.alpha = 0.5
            //state.alpha = 0.5
            //zipCode.alpha = 0.5
            
            /* UITextField Editing active/inactive */
            //dateOfBirth.allowsEditingTextAttributes = false
            //socialSecurityNumber.allowsEditingTextAttributes = false
            projectNumber.allowsEditingTextAttributes = false
            //firstName.allowsEditingTextAttributes = false
            //lastName.allowsEditingTextAttributes = false
            company.allowsEditingTextAttributes = false
            //streetAddress.allowsEditingTextAttributes = false
            //city.allowsEditingTextAttributes = false
            //state.allowsEditingTextAttributes = false
            //zipCode.allowsEditingTextAttributes = false
        } else if subNavOption1.currentTitle == ContractorSubNav.proj1001.rawValue && subNavOption1.isSelected == true {
            
            /* UITextField appearance */
            //dateOfBirth.alpha = 0.5
            //socialSecurityNumber.alpha = 0.5
            //projectNumber.alpha = 0.5
            //firstName.alpha = 0.5
            //lastName.alpha = 0.5
            company.alpha = 0.5
            //streetAddress.alpha = 0.5
            //city.alpha = 0.5
            //state.alpha = 0.5
            //zipCode.alpha = 0.5
            
            /* UITextField Editing active/inactive */
            //dateOfBirth.allowsEditingTextAttributes = false
            //socialSecurityNumber.allowsEditingTextAttributes = false
            //projectNumber.allowsEditingTextAttributes = false
            //firstName.allowsEditingTextAttributes = false
            //lastName.allowsEditingTextAttributes = false
            company.allowsEditingTextAttributes = false
            //streetAddress.allowsEditingTextAttributes = false
            //city.allowsEditingTextAttributes = false
            //state.allowsEditingTextAttributes = false
            //zipCode.allowsEditingTextAttributes = false
        } else if subNavOption1.currentTitle == Vendors.acme.rawValue && subNavOption1.isSelected == true {
            
            /* UITextField appearance */
            //dateOfBirth.alpha = 0.5
            socialSecurityNumber.alpha = 0.5
            projectNumber.alpha = 0.5
            //firstName.alpha = 0.5
            //lastName.alpha = 0.5
            //company.alpha = 0.5
            streetAddress.alpha = 0.5
            city.alpha = 0.5
            state.alpha = 0.5
            zipCode.alpha = 0.5
/*MARK: *** dateOfVisit ***   */
            
            /* UITextField Editing active/inactive */
            //dateOfBirth.allowsEditingTextAttributes = false
            socialSecurityNumber.allowsEditingTextAttributes = false
            projectNumber.allowsEditingTextAttributes = false
            //firstName.allowsEditingTextAttributes = false
            //lastName.allowsEditingTextAttributes = false
            //company.allowsEditingTextAttributes = false
            streetAddress.allowsEditingTextAttributes = false
            city.allowsEditingTextAttributes = false
            state.allowsEditingTextAttributes = false
            zipCode.allowsEditingTextAttributes = false
/*MARK: *** dateOfVisit ***   */
        }
    }
    @IBAction func subNavOption2(_ sender: UIButton) {
        if subNavOption2.currentTitle == EntrantTypeSubNav.adult.rawValue && subNavOption2.isSelected == true {
            
            /* UITextField appearance */
            dateOfBirth.alpha = 0.5
            socialSecurityNumber.alpha = 0.5
            projectNumber.alpha = 0.5
            firstName.alpha = 0.5
            lastName.alpha = 0.5
            company.alpha = 0.5
            streetAddress.alpha = 0.5
            city.alpha = 0.5
            state.alpha = 0.5
            zipCode.alpha = 0.5
            
            /* UITextField Editing active/inactive */
            dateOfBirth.allowsEditingTextAttributes = false
            socialSecurityNumber.allowsEditingTextAttributes = false
            projectNumber.allowsEditingTextAttributes = false
            firstName.allowsEditingTextAttributes = false
            lastName.allowsEditingTextAttributes = false
            company.allowsEditingTextAttributes = false
            streetAddress.allowsEditingTextAttributes = false
            city.allowsEditingTextAttributes = false
            state.allowsEditingTextAttributes = false
            zipCode.allowsEditingTextAttributes = false
        }
    }
    @IBAction func subNavOption3(_ sender: UIButton) {
        if subNavOption2.currentTitle == EntrantTypeSubNav.senior.rawValue && subNavOption2.isSelected == true {
            
            /* UITextField appearance */
            //dateOfBirth.alpha = 0.5
            socialSecurityNumber.alpha = 0.5
            projectNumber.alpha = 0.5
            //firstName.alpha = 0.5
            //lastName.alpha = 0.5
            company.alpha = 0.5
            streetAddress.alpha = 0.5
            city.alpha = 0.5
            state.alpha = 0.5
            zipCode.alpha = 0.5
            
            /* UITextField Editing active/inactive */
            //dateOfBirth.allowsEditingTextAttributes = false
            socialSecurityNumber.allowsEditingTextAttributes = false
            projectNumber.allowsEditingTextAttributes = false
            //firstName.allowsEditingTextAttributes = false
            //lastName.allowsEditingTextAttributes = false
            company.allowsEditingTextAttributes = false
            streetAddress.allowsEditingTextAttributes = false
            city.allowsEditingTextAttributes = false
            state.allowsEditingTextAttributes = false
            zipCode.allowsEditingTextAttributes = false
        }
    }
    @IBAction func subNavOption4(_ sender: UIButton) {
        if subNavOption2.currentTitle == EntrantTypeSubNav.vip.rawValue && subNavOption2.isSelected == true {
            
            /* UITextField appearance */
            dateOfBirth.alpha = 0.5
            socialSecurityNumber.alpha = 0.5
            projectNumber.alpha = 0.5
            firstName.alpha = 0.5
            lastName.alpha = 0.5
            company.alpha = 0.5
            streetAddress.alpha = 0.5
            city.alpha = 0.5
            state.alpha = 0.5
            zipCode.alpha = 0.5
            
            /* UITextField Editing active/inactive */
            dateOfBirth.allowsEditingTextAttributes = false
            socialSecurityNumber.allowsEditingTextAttributes = false
            projectNumber.allowsEditingTextAttributes = false
            firstName.allowsEditingTextAttributes = false
            lastName.allowsEditingTextAttributes = false
            company.allowsEditingTextAttributes = false
            streetAddress.allowsEditingTextAttributes = false
            city.allowsEditingTextAttributes = false
            state.allowsEditingTextAttributes = false
            zipCode.allowsEditingTextAttributes = false
        }
    }
    @IBAction func subNavOption5(_ sender: UIButton) {
        if subNavOption2.currentTitle == EntrantTypeSubNav.seasonPass.rawValue && subNavOption2.isSelected == true {
            
            /* UITextField appearance */
            //dateOfBirth.alpha = 0.5
            socialSecurityNumber.alpha = 0.5
            projectNumber.alpha = 0.5
            //firstName.alpha = 0.5
            //lastName.alpha = 0.5
            company.alpha = 0.5
            //streetAddress.alpha = 0.5
            //city.alpha = 0.5
            //state.alpha = 0.5
            //zipCode.alpha = 0.5
            
            /* UITextField Editing active/inactive */
            //dateOfBirth.allowsEditingTextAttributes = false
            socialSecurityNumber.allowsEditingTextAttributes = false
            projectNumber.allowsEditingTextAttributes = false
            //firstName.allowsEditingTextAttributes = false
            //lastName.allowsEditingTextAttributes = false
            company.allowsEditingTextAttributes = false
            //streetAddress.allowsEditingTextAttributes = false
            //city.allowsEditingTextAttributes = false
            //state.allowsEditingTextAttributes = false
            //zipCode.allowsEditingTextAttributes = false
        }
    }


    // Pass Generators
    @IBAction func generatePass(_ sender: ButtonDesign) {
        /* 
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
        */
        
        if subNavOption1.currentTitle == EntrantTypeSubNav.child.rawValue && subNavOption1.isSelected == true {
            
            guard let newUser = GuestChildSource(dateOfBirth: dateOfBirth.text), newUser.dateOfBirth != nil || newUser.dateOfBirth != "" else {
                print(ErrorSource.missingBirthdate(description: "Please enter your Date of Birth"))
                return
            }
            
        } else if subNavOption1.currentTitle == EntrantTypeSubNav.adult.rawValue && subNavOption1.isSelected == true {
            
            let newUser = GuestClassicSource()
        
        } else if subNavOption1.currentTitle == EntrantTypeSubNav.senior.rawValue && subNavOption1.isSelected == true {
            
            guard let newUser = GuestSeniorSource(dateOfBirth: dateOfBirth.text, firstName: firstName.text, lastName: lastName.text), newUser.dateOfBirth != nil || newUser.dateOfBirth != "" else {
                print(ErrorSource.missingBirthdate(description: "Please enter your Date of Birth"))
                return
            }
            
            guard newUser.firstName != nil || newUser.firstName == "" else {
                print(ErrorSource.missingFirstName(description: "Please enter your First Name"))
                return
            }
            
            guard newUser.lastName != nil || newUser.lastName != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your Last Name"))
                return
            }
            
        
        } else if subNavOption1.currentTitle == EntrantTypeSubNav.vip.rawValue && subNavOption1.isSelected == true {
            
            let newUser = GuestVIPSource()
        
        } else if subNavOption1.currentTitle == EntrantTypeSubNav.seasonPass.rawValue && subNavOption1.isSelected == true {
            
            guard let newUser = GuestSeasonPassSource(dateOfBirth: dateOfBirth.text, firstName: firstName.text, lastName: lastName.text, streetAddress: streetAddress.text, city: city.text, state: state.text, zipCode: zipCode.text), newUser.dateOfBirth != nil || newUser.dateOfBirth != "" else {
                print(ErrorSource.missingBirthdate(description: "Please enter your Date of Birth"))
                return
            }
            
            guard newUser.firstName != nil || newUser.firstName == "" else {
                print(ErrorSource.missingFirstName(description: "Please enter your First Name"))
                return
            }
            
            guard newUser.lastName != nil || newUser.lastName != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your Last Name"))
                return
            }
            
            guard newUser.streetAddress != nil || newUser.streetAddress != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your Street Address"))
                return
            }
            
            guard newUser.city != nil || newUser.city != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your City"))
                return
            }
            
            guard newUser.state != nil || newUser.state != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your State"))
                return
            }
            
            guard newUser.zipCode != nil || newUser.zipCode != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your ZIP Code"))
                return
            }
            
        } else if subNavOption1.currentTitle == EntrantTypeSubNav.hourlyFood.rawValue && subNavOption1.isSelected == true {
            
            guard let newUser = HourlyFoodEmployeeSource(dateOfBirth: dateOfBirth.text, firstName: firstName.text, lastName: lastName.text, streetAddress: streetAddress.text, city: city.text, state: state.text, zipCode: zipCode.text, socialSecurityNumber: socialSecurityNumber.text), newUser.dateOfBirth != nil || newUser.dateOfBirth != "" else {
                print(ErrorSource.missingBirthdate(description: "Please enter your Date of Birth"))
                return
            }
            
            guard newUser.firstName != nil || newUser.firstName == "" else {
                print(ErrorSource.missingFirstName(description: "Please enter your First Name"))
                return
            }
            
            guard newUser.lastName != nil || newUser.lastName != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your Last Name"))
                return
            }
            
            guard newUser.streetAddress != nil || newUser.streetAddress != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your Street Address"))
                return
            }
            
            guard newUser.city != nil || newUser.city != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your City"))
                return
            }
            
            guard newUser.state != nil || newUser.state != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your State"))
                return
            }
            
            guard newUser.zipCode != nil || newUser.zipCode != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your ZIP Code"))
                return
            }
            
            guard newUser.socialSecurityNumber != nil || newUser.socialSecurityNumber != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your Social Security Number"))
                return
            }

            
        } else if subNavOption1.currentTitle == EntrantTypeSubNav.hourlyRide.rawValue && subNavOption1.isSelected == true {
            
            guard let newUser = HourlyRideServicesEmployeeSource(dateOfBirth: dateOfBirth.text, firstName: firstName.text, lastName: lastName.text, streetAddress: streetAddress.text, city: city.text, state: state.text, zipCode: zipCode.text, socialSecurityNumber: socialSecurityNumber.text), newUser.dateOfBirth != nil || newUser.dateOfBirth != "" else {
                print(ErrorSource.missingBirthdate(description: "Please enter your Date of Birth"))
                return
            }
            
            guard newUser.firstName != nil || newUser.firstName == "" else {
                print(ErrorSource.missingFirstName(description: "Please enter your First Name"))
                return
            }
            
            guard newUser.lastName != nil || newUser.lastName != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your Last Name"))
                return
            }
            
            guard newUser.streetAddress != nil || newUser.streetAddress != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your Street Address"))
                return
            }
            
            guard newUser.city != nil || newUser.city != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your City"))
                return
            }
            
            guard newUser.state != nil || newUser.state != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your State"))
                return
            }
            
            guard newUser.zipCode != nil || newUser.zipCode != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your ZIP Code"))
                return
            }
            
            guard newUser.socialSecurityNumber != nil || newUser.socialSecurityNumber != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your Social Security Number"))
                return
            }
        
        } else if subNavOption1.currentTitle == EntrantTypeSubNav.hourlyMaintenance.rawValue && subNavOption1.isSelected == true {
            
            guard let newUser = HourlyMaintenanceEmployeeSource(dateOfBirth: dateOfBirth.text, firstName: firstName.text, lastName: lastName.text, streetAddress: streetAddress.text, city: city.text, state: state.text, zipCode: zipCode.text, socialSecurityNumber: socialSecurityNumber.text), newUser.dateOfBirth != nil || newUser.dateOfBirth != "" else {
                print(ErrorSource.missingBirthdate(description: "Please enter your Date of Birth"))
                return
            }
            
            guard newUser.firstName != nil || newUser.firstName == "" else {
                print(ErrorSource.missingFirstName(description: "Please enter your First Name"))
                return
            }
            
            guard newUser.lastName != nil || newUser.lastName != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your Last Name"))
                return
            }
            
            guard newUser.streetAddress != nil || newUser.streetAddress != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your Street Address"))
                return
            }
            
            guard newUser.city != nil || newUser.city != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your City"))
                return
            }
            
            guard newUser.state != nil || newUser.state != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your State"))
                return
            }
            
            guard newUser.zipCode != nil || newUser.zipCode != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your ZIP Code"))
                return
            }
            
            guard newUser.socialSecurityNumber != nil || newUser.socialSecurityNumber != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your Social Security Number"))
                return
            }
        
        } else if subNavOption1.currentTitle == ManagerType.shift.rawValue && subNavOption1.isSelected == true {
            
            guard let newUser = ManagerEmployeeSource(dateOfBirth: dateOfBirth.text, firstName: firstName.text, lastName: lastName.text, streetAddress: streetAddress.text, city: city.text, state: state.text, zipCode: zipCode.text, socialSecurityNumber: socialSecurityNumber.text, managementTier: [.shift]), newUser.dateOfBirth != nil || newUser.dateOfBirth != "" else {
                print(ErrorSource.missingBirthdate(description: "Please enter your Date of Birth"))
                return
            }
            
            guard newUser.firstName != nil || newUser.firstName == "" else {
                print(ErrorSource.missingFirstName(description: "Please enter your First Name"))
                return
            }
            
            guard newUser.lastName != nil || newUser.lastName != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your Last Name"))
                return
            }
            
            guard newUser.streetAddress != nil || newUser.streetAddress != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your Street Address"))
                return
            }
            
            guard newUser.city != nil || newUser.city != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your City"))
                return
            }
            
            guard newUser.state != nil || newUser.state != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your State"))
                return
            }
            
            guard newUser.zipCode != nil || newUser.zipCode != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your ZIP Code"))
                return
            }
            
            guard newUser.socialSecurityNumber != nil || newUser.socialSecurityNumber != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your Social Security Number"))
                return
            }
        
        } else if subNavOption1.currentTitle == ManagerType.general.rawValue && subNavOption1.isSelected == true {
            
            guard let newUser = ManagerEmployeeSource(dateOfBirth: dateOfBirth.text, firstName: firstName.text, lastName: lastName.text, streetAddress: streetAddress.text, city: city.text, state: state.text, zipCode: zipCode.text, socialSecurityNumber: socialSecurityNumber.text, managementTier: [.general]), newUser.dateOfBirth != nil || newUser.dateOfBirth != "" else {
                print(ErrorSource.missingBirthdate(description: "Please enter your Date of Birth"))
                return
            }
            
            guard newUser.firstName != nil || newUser.firstName == "" else {
                print(ErrorSource.missingFirstName(description: "Please enter your First Name"))
                return
            }
            
            guard newUser.lastName != nil || newUser.lastName != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your Last Name"))
                return
            }
            
            guard newUser.streetAddress != nil || newUser.streetAddress != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your Street Address"))
                return
            }
            
            guard newUser.city != nil || newUser.city != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your City"))
                return
            }
            
            guard newUser.state != nil || newUser.state != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your State"))
                return
            }
            
            guard newUser.zipCode != nil || newUser.zipCode != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your ZIP Code"))
                return
            }
            
            guard newUser.socialSecurityNumber != nil || newUser.socialSecurityNumber != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your Social Security Number"))
                return
            }
        
        } else if subNavOption1.currentTitle == ManagerType.senior.rawValue && subNavOption1.isSelected == true {
        
            guard let newUser = ManagerEmployeeSource(dateOfBirth: dateOfBirth.text, firstName: firstName.text, lastName: lastName.text, streetAddress: streetAddress.text, city: city.text, state: state.text, zipCode: zipCode.text, socialSecurityNumber: socialSecurityNumber.text, managementTier: [.senior]), newUser.dateOfBirth != nil || newUser.dateOfBirth != "" else {
                print(ErrorSource.missingBirthdate(description: "Please enter your Date of Birth"))
                return
            }
            
            guard newUser.firstName != nil || newUser.firstName == "" else {
                print(ErrorSource.missingFirstName(description: "Please enter your First Name"))
                return
            }
            
            guard newUser.lastName != nil || newUser.lastName != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your Last Name"))
                return
            }
            
            guard newUser.streetAddress != nil || newUser.streetAddress != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your Street Address"))
                return
            }
            
            guard newUser.city != nil || newUser.city != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your City"))
                return
            }
            
            guard newUser.state != nil || newUser.state != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your State"))
                return
            }
            
            guard newUser.zipCode != nil || newUser.zipCode != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your ZIP Code"))
                return
            }
            
            guard newUser.socialSecurityNumber != nil || newUser.socialSecurityNumber != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your Social Security Number"))
                return
            }
            
        } else if subNavOption1.currentTitle == ContractorSubNav.proj1001.rawValue && subNavOption1.isSelected == true {
            
            guard let newUser = ContractEmployeeSource(dateOfBirth: dateOfBirth.text, firstName: firstName.text, lastName: lastName.text, streetAddress: streetAddress.text, city: city.text, state: state.text, zipCode: zipCode.text, socialSecurityNumber: socialSecurityNumber.text, projectNumber: ContractorSubNav.proj1001.rawValue), newUser.dateOfBirth != nil || newUser.dateOfBirth != "" else {
                print(ErrorSource.missingBirthdate(description: "Please enter your Date of Birth"))
                return
            }
            
            guard newUser.firstName != nil || newUser.firstName == "" else {
                print(ErrorSource.missingFirstName(description: "Please enter your First Name"))
                return
            }
            
            guard newUser.lastName != nil || newUser.lastName != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your Last Name"))
                return
            }
            
            guard newUser.streetAddress != nil || newUser.streetAddress != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your Street Address"))
                return
            }
            
            guard newUser.city != nil || newUser.city != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your City"))
                return
            }
            
            guard newUser.state != nil || newUser.state != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your State"))
                return
            }
            
            guard newUser.zipCode != nil || newUser.zipCode != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your ZIP Code"))
                return
            }
            
            guard newUser.socialSecurityNumber != nil || newUser.socialSecurityNumber != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your Social Security Number"))
                return
            }
        
        } else if subNavOption1.currentTitle == ContractorSubNav.proj1002.rawValue && subNavOption1.isSelected == true {
            
            guard let newUser = ContractEmployeeSource(dateOfBirth: dateOfBirth.text, firstName: firstName.text, lastName: lastName.text, streetAddress: streetAddress.text, city: city.text, state: state.text, zipCode: zipCode.text, socialSecurityNumber: socialSecurityNumber.text, projectNumber: ContractorSubNav.proj1002.rawValue), newUser.dateOfBirth != nil || newUser.dateOfBirth != "" else {
                print(ErrorSource.missingBirthdate(description: "Please enter your Date of Birth"))
                return
            }
            
            guard newUser.firstName != nil || newUser.firstName == "" else {
                print(ErrorSource.missingFirstName(description: "Please enter your First Name"))
                return
            }
            
            guard newUser.lastName != nil || newUser.lastName != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your Last Name"))
                return
            }
            
            guard newUser.streetAddress != nil || newUser.streetAddress != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your Street Address"))
                return
            }
            
            guard newUser.city != nil || newUser.city != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your City"))
                return
            }
            
            guard newUser.state != nil || newUser.state != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your State"))
                return
            }
            
            guard newUser.zipCode != nil || newUser.zipCode != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your ZIP Code"))
                return
            }
            
            guard newUser.socialSecurityNumber != nil || newUser.socialSecurityNumber != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your Social Security Number"))
                return
            }
            
            
        
        } else if subNavOption1.currentTitle == ContractorSubNav.proj1003.rawValue && subNavOption1.isSelected == true {
            
            guard let newUser = ContractEmployeeSource(dateOfBirth: dateOfBirth.text, firstName: firstName.text, lastName: lastName.text, streetAddress: streetAddress.text, city: city.text, state: state.text, zipCode: zipCode.text, socialSecurityNumber: socialSecurityNumber.text, projectNumber: ContractorSubNav.proj1003.rawValue), newUser.dateOfBirth != nil || newUser.dateOfBirth != "" else {
                print(ErrorSource.missingBirthdate(description: "Please enter your Date of Birth"))
                return
            }
            
            guard newUser.firstName != nil || newUser.firstName == "" else {
                print(ErrorSource.missingFirstName(description: "Please enter your First Name"))
                return
            }
            
            guard newUser.lastName != nil || newUser.lastName != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your Last Name"))
                return
            }
            
            guard newUser.streetAddress != nil || newUser.streetAddress != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your Street Address"))
                return
            }
            
            guard newUser.city != nil || newUser.city != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your City"))
                return
            }
            
            guard newUser.state != nil || newUser.state != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your State"))
                return
            }
            
            guard newUser.zipCode != nil || newUser.zipCode != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your ZIP Code"))
                return
            }
            
            guard newUser.socialSecurityNumber != nil || newUser.socialSecurityNumber != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your Social Security Number"))
                return
            }
        
        } else if subNavOption1.currentTitle == ContractorSubNav.proj2001.rawValue && subNavOption1.isSelected == true {
            
            guard let newUser = ContractEmployeeSource(dateOfBirth: dateOfBirth.text, firstName: firstName.text, lastName: lastName.text, streetAddress: streetAddress.text, city: city.text, state: state.text, zipCode: zipCode.text, socialSecurityNumber: socialSecurityNumber.text, projectNumber: ContractorSubNav.proj2001.rawValue), newUser.dateOfBirth != nil || newUser.dateOfBirth != "" else {
                print(ErrorSource.missingBirthdate(description: "Please enter your Date of Birth"))
                return
            }
            
            guard newUser.firstName != nil || newUser.firstName == "" else {
                print(ErrorSource.missingFirstName(description: "Please enter your First Name"))
                return
            }
            
            guard newUser.lastName != nil || newUser.lastName != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your Last Name"))
                return
            }
            
            guard newUser.streetAddress != nil || newUser.streetAddress != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your Street Address"))
                return
            }
            
            guard newUser.city != nil || newUser.city != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your City"))
                return
            }
            
            guard newUser.state != nil || newUser.state != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your State"))
                return
            }
            
            guard newUser.zipCode != nil || newUser.zipCode != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your ZIP Code"))
                return
            }
            
            guard newUser.socialSecurityNumber != nil || newUser.socialSecurityNumber != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your Social Security Number"))
                return
            }
            
        } else if subNavOption1.currentTitle == ContractorSubNav.proj2002.rawValue && subNavOption1.isSelected == true {
            
            guard let newUser = ContractEmployeeSource(dateOfBirth: dateOfBirth.text, firstName: firstName.text, lastName: lastName.text, streetAddress: streetAddress.text, city: city.text, state: state.text, zipCode: zipCode.text, socialSecurityNumber: socialSecurityNumber.text, projectNumber: ContractorSubNav.proj2002.rawValue), newUser.dateOfBirth != nil || newUser.dateOfBirth != "" else {
                print(ErrorSource.missingBirthdate(description: "Please enter your Date of Birth"))
                return
            }
            
            guard newUser.firstName != nil || newUser.firstName == "" else {
                print(ErrorSource.missingFirstName(description: "Please enter your First Name"))
                return
            }
            
            guard newUser.lastName != nil || newUser.lastName != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your Last Name"))
                return
            }
            
            guard newUser.streetAddress != nil || newUser.streetAddress != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your Street Address"))
                return
            }
            
            guard newUser.city != nil || newUser.city != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your City"))
                return
            }
            
            guard newUser.state != nil || newUser.state != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your State"))
                return
            }
            
            guard newUser.zipCode != nil || newUser.zipCode != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your ZIP Code"))
                return
            }
            
            guard newUser.socialSecurityNumber != nil || newUser.socialSecurityNumber != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your Social Security Number"))
                return
            }
        
        } else if subNavOption1.currentTitle == Vendors.acme.rawValue && subNavOption1.isSelected == true {
            
            guard let newUser = VendorSource(dateOfBirth: dateOfBirth.text, firstName: firstName.text, lastName: lastName.text, vendorCompany: Vendors.acme.rawValue, dateOfVisit: Date()), newUser.dateOfBirth != nil || newUser.dateOfBirth != "" else {
                print(ErrorSource.missingBirthdate(description: "Please enter your Date of Birth"))
                return
            }
            
            guard newUser.firstName != nil || newUser.firstName == "" else {
                print(ErrorSource.missingFirstName(description: "Please enter your First Name"))
                return
            }
            
            guard newUser.lastName != nil || newUser.lastName != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your Last Name"))
                return
            }
        
        } else if subNavOption1.currentTitle == Vendors.orkin.rawValue && subNavOption1.isSelected == true {
            
            guard let newUser = VendorSource(dateOfBirth: dateOfBirth.text, firstName: firstName.text, lastName: lastName.text, vendorCompany: Vendors.orkin.rawValue, dateOfVisit: Date()), newUser.dateOfBirth != nil || newUser.dateOfBirth != "" else {
                print(ErrorSource.missingBirthdate(description: "Please enter your Date of Birth"))
                return
            }
            
            guard newUser.firstName != nil || newUser.firstName == "" else {
                print(ErrorSource.missingFirstName(description: "Please enter your First Name"))
                return
            }
            
            guard newUser.lastName != nil || newUser.lastName != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your Last Name"))
                return
            }
        
        } else if subNavOption1.currentTitle == Vendors.fedex.rawValue && subNavOption1.isSelected == true {
            
            guard let newUser = VendorSource(dateOfBirth: dateOfBirth.text, firstName: firstName.text, lastName: lastName.text, vendorCompany: Vendors.fedex.rawValue, dateOfVisit: Date()), newUser.dateOfBirth != nil || newUser.dateOfBirth != "" else {
                print(ErrorSource.missingBirthdate(description: "Please enter your Date of Birth"))
                return
            }
            
            guard newUser.firstName != nil || newUser.firstName == "" else {
                print(ErrorSource.missingFirstName(description: "Please enter your First Name"))
                return
            }
            
            guard newUser.lastName != nil || newUser.lastName != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your Last Name"))
                return
            }
        
        } else if subNavOption1.currentTitle == Vendors.nwElectrical.rawValue && subNavOption1.isSelected == true {
            
            guard let newUser = VendorSource(dateOfBirth: dateOfBirth.text, firstName: firstName.text, lastName: lastName.text, vendorCompany: Vendors.nwElectrical.rawValue, dateOfVisit: Date()), newUser.dateOfBirth != nil || newUser.dateOfBirth != "" else {
                print(ErrorSource.missingBirthdate(description: "Please enter your Date of Birth"))
                return
            }
            
            guard newUser.firstName != nil || newUser.firstName == "" else {
                print(ErrorSource.missingFirstName(description: "Please enter your First Name"))
                return
            }
            
            guard newUser.lastName != nil || newUser.lastName != "" else {
                print(ErrorSource.missingLastName(description: "Please enter your Last Name"))
                return
            }
        
        }
        
        
        
        
    }

    @IBAction func populateData(_ sender: ButtonDesign) {
    }

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
    
    // allows me to animate stack views and their display
    private func animateView(view: UIView, toHidden hidden: Bool) {
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 5.0, options: UIViewAnimationOptions(), animations: {() -> Void in view.isHidden = hidden }, completion: nil)
        
    }

    /*


    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
