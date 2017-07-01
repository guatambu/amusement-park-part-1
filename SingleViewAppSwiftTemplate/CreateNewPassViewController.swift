//
//  CreateNewPassViewController.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Michael Guatambu Davis on 5/24/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import UIKit

class CreateNewPassViewController: UIViewController, MainViewControllerDelegate {
    
    // passing Entrant instance initialized in MainViewController to CreateNewPassViewController
    
    
    
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
        
        

        // Do any additional setup after loading the view.
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let mainViewController = segue.destination as? MainViewController {
            mainViewController.delegate = self
        }
    }
    
    func entrantPassed(entrant: EntrantTypeable) {
        passFullName.text = "\(String(describing: entrant.firstName)) \(String(describing: entrant.lastName))"
        passEntrantType.text = "\(String(describing: entrant))"
        passPermissions.text = "\(String(describing: entrant.areaAccess))/n\(String(describing: entrant.ridePrivileges))/n\(String(describing: entrant.discountAmount[0]))\(String(describing: entrant.discountAccess[0]))/n\(String(describing: entrant.discountAmount[1]))\(String(describing: entrant.discountAccess[1]))/n\(String(describing: entrant.requiredInformation))"
    }
    

    /*


    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
