//
//  CreateNewPassViewController.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Michael Guatambu Davis on 5/24/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import UIKit

class CreateNewPassViewController: UIViewController {
    
    
    /* Pass Display @IBOutlets */
    
    // Pass @IBOutlets
    @IBOutlet weak var passFullNmae: UILabel!
    @IBOutlet weak var passEntrantType: UILabel!
    @IBOutlet weak var passPermissions: UILabel!
    
    // Access Testing @IBOutlets
    @IBOutlet weak var testResults: UILabel!
    
    /* Access Testing @IBAction Buttons */
    
    // Testing Buttons
    @IBAction func areaAccessButton(_ sender: ButtonDesign) {
        
        func swipeAreaAccess(check entrant: PersonSource) {
            
            for area in entrant.areaAccess {
                switch area {
                case .amusement:
                    testResults.text = "VALID: amusement areas"
                case .office:
                    testResults.text = "VALID: office"
                    break
                case .maintenance:
                    testResults.text = "VALID: maintenance"
                    break
                case .kitchen:
                    testResults.text = "VALID: kitchen"
                    break
                case .rideControl:
                    testResults.text = "VALID: ride control"
                }
            }
        }
        
    }
    
    @IBAction func rideAccessButton(_ sender: ButtonDesign) {
        
        func swipeRidePrivileges(check entrant: PersonSource) {
            
            for privilege in entrant.ridePrivileges {
                switch privilege {
                case .all:
                    testResults.text = "VALID: pass holder may ride the attraction"
                case .skip:
                    testResults.text = "VALID: pass holder may skip line of attractions"
                case .deferToRules:
                    testResults.text = "INVALID: pass holder must provide permissions"
                }
            }
        }
        
    }
    
    @IBAction func discountAccessButton(_ sender: ButtonDesign) {
        
        func swipeDiscount(check entrant: PersonSource) {
            
            for discount in entrant.discountAccess {
                switch discount {
                case .food:
                    testResults.text = "VALID: pass holder receives food discount"
                case .merch:
                    testResults.text = "VALID: pass holder receives merch discount"
                case .none:
                    testResults.text = "INVALID: no discounts"
                }
            }
        }
        
    }
    
    @IBAction func requiredInfoButton(_ sender: ButtonDesign) {
        
        func swipeRequiredInfo(check entrant: PersonSource) {
            
            for person in entrant.requiredInformation {
                switch person {
                case .business:
                    testResults.text = "pass holder must provide required business information"
                case .personal:
                    testResults.text = "pass holder must provide required personal information"
                case .none:
                    testResults.text = "none"
                }
            }
        }
        
    }

    
    // Create New Pass @IBOutlet
    @IBAction func createNewPass(_ sender: ButtonDesign) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*


    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
