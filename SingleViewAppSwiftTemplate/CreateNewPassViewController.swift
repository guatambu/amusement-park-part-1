//
//  CreateNewPassViewController.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Michael Guatambu Davis on 5/24/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import UIKit

class CreateNewPassViewController: UIViewController {
    
    // passing Entrant instance initialized in MainViewController to CreateNewPassViewController
    
    var entrant: PersonSource?
    
    /* Pass Display @IBOutlets */
    
    // Pass @IBOutlets
    @IBOutlet weak var passFullName: UILabel!
    @IBOutlet weak var passEntrantType: UILabel!
    @IBOutlet weak var passPermissions: UILabel!
    
    // Access Testing @IBOutlets
    @IBOutlet weak var testResults: UILabel!
    
    /* Access Testing @IBAction Buttons */
    
    // Testing Buttons
    @IBAction func areaAccessButton(_ sender: ButtonDesign) {
        
        func swipeAreaAccess(check entrant: EntrantTypeable) {
            
            for area in entrant.areaAccess {
                switch area {
                case .amusement:
                    testResults.text = "VALID: amusement areas"
                    testResults.font = UIFont.boldSystemFont(ofSize: testResults.font.pointSize)
                    testResults.textColor = UIColor.green
                case .office:
                    testResults.text = "VALID: office"
                    testResults.font = UIFont.boldSystemFont(ofSize: testResults.font.pointSize)
                    testResults.textColor = UIColor.green
                    break
                case .maintenance:
                    testResults.text = "VALID: maintenance"
                    testResults.font = UIFont.boldSystemFont(ofSize: testResults.font.pointSize)
                    testResults.textColor = UIColor.green
                    break
                case .kitchen:
                    testResults.text = "VALID: kitchen"
                    testResults.font = UIFont.boldSystemFont(ofSize: testResults.font.pointSize)
                    testResults.textColor = UIColor.green
                    break
                case .rideControl:
                    testResults.text = "VALID: ride control"
                    testResults.font = UIFont.boldSystemFont(ofSize: testResults.font.pointSize)
                    testResults.textColor = UIColor.green
                }
            }
        }
        
    }
    
    @IBAction func rideAccessButton(_ sender: ButtonDesign) {
        
        func swipeRidePrivileges(check entrant: EntrantTypeable) {
            
            for privilege in entrant.ridePrivileges {
                switch privilege {
                case .all:
                    testResults.text = "VALID: pass holder may ride the attraction"
                    testResults.font = UIFont.boldSystemFont(ofSize: testResults.font.pointSize)
                    testResults.textColor = UIColor.green
                case .skip:
                    testResults.text = "VALID: pass holder may skip line of attractions"
                    testResults.font = UIFont.boldSystemFont(ofSize: testResults.font.pointSize)
                    testResults.textColor = UIColor.green
                case .deferToRules:
                    testResults.text = "INVALID: pass holder must provide permissions"
                    testResults.font = UIFont.boldSystemFont(ofSize: testResults.font.pointSize)
                    testResults.textColor = UIColor.green
                case .none:
                    testResults.text = "INVALID: pass holder has no ride access privileges"
                    testResults.font = UIFont.boldSystemFont(ofSize: testResults.font.pointSize)
                    testResults.textColor = UIColor.red
                }
            }
        }
        
    }
    
    @IBAction func discountAccessButton(_ sender: ButtonDesign) {
        
        func swipeDiscount(check entrant: EntrantTypeable) {
            
            for discount in entrant.discountAccess {
                switch discount {
                case .food:
                    testResults.text = "VALID: pass holder receives food discount"
                    testResults.font = UIFont.boldSystemFont(ofSize: testResults.font.pointSize)
                    testResults.textColor = UIColor.green
                case .merch:
                    testResults.text = "VALID: pass holder receives merch discount"
                    testResults.font = UIFont.boldSystemFont(ofSize: testResults.font.pointSize)
                    testResults.textColor = UIColor.green
                case .none:
                    testResults.text = "INVALID: no discounts"
                    testResults.font = UIFont.boldSystemFont(ofSize: testResults.font.pointSize)
                    testResults.textColor = UIColor.red
                }
            }
        }
        
    }
    
    @IBAction func requiredInfoButton(_ sender: ButtonDesign) {
        
        func swipeRequiredInfo(check entrant: EntrantTypeable) {
            
            for person in entrant.requiredInformation {
                switch person {
                case .business:
                    testResults.text = "pass holder must provide required business information"
                    testResults.font = UIFont.boldSystemFont(ofSize: testResults.font.pointSize)
                    testResults.textColor = UIColor.black
                case .personal:
                    testResults.text = "pass holder must provide required personal information"
                    testResults.font = UIFont.boldSystemFont(ofSize: testResults.font.pointSize)
                    testResults.textColor = UIColor.black
                case .none:
                    testResults.text = "none"
                    testResults.font = UIFont.boldSystemFont(ofSize: testResults.font.pointSize)
                    testResults.textColor = UIColor.black
                }
            }
        }
        
        
    }

    
    // Create New Pass @IBOutlet
    @IBAction func createNewPass(_ sender: ButtonDesign) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("hello this is CreateNewPassViewController")
        print("this is entrant's current value: \(entrant as Any)")
        
        guestPassPrint()
        
        // Do any additional setup after loading the view.
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func guestPassPrint() {
        
        nameIsValid()
        entrantTypeIsValid()
        permissionsAreValid()

    }
    
    
    
    func nameIsValid() {
        guard let entrantFirstName = entrant?.firstName, let entrantLastName = entrant?.lastName  else {
            print("oops no name in CreateNewPassViewController")
            return
        }
        print("YAY name in CreateNewPassViewController")
        print("\(entrantFirstName) \(entrantLastName)")
        passFullName?.text = "\(entrantFirstName) \(entrantLastName)"
        
    }
    
    func entrantTypeIsValid() {
        guard let entrantType = entrant?.entrantType else {
            print("oops no entrant in CreateNewPassViewController")
            return
        }
        print("YAY Entrant Type in CreateNewPassViewController")
        print("\(entrantType)")
        passEntrantType?.text = "\(entrantType[0].rawValue)"
    }
    
    func permissionsAreValid() {
        guard let areaAccess = entrant?.areaAccess, let ridePrivileges = entrant?.ridePrivileges, let discountAmount = entrant?.discountAccess, let discountAccess = entrant?.discountAmount, let requiredInformation = entrant?.requiredInformation  else {
            print("oops no permissions in CreateNewPassViewController")
            return
        }
        print("YAY permissions are in CreateNewPassViewController")
        print("\(areaAccess)\n\(ridePrivileges)\n\(discountAccess)\n\(discountAmount)\n\(requiredInformation)")
        passPermissions?.text = "- \(areaAccess)\n- \(ridePrivileges)\n- \(discountAmount[0].rawValue) off \(discountAccess[0].rawValue)\n- \(discountAmount[1].rawValue) off \(discountAccess[1].rawValue)\n- \(requiredInformation[0].rawValue)"
    }
    
    
}










