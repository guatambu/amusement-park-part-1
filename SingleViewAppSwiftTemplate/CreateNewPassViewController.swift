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
    var areaAccessPermission: String = ""
    var ridePrivileges: String = ""
    
    /* Pass Display @IBOutlets */
    
    // Pass @IBOutlets
    @IBOutlet weak var passFullName: UILabel!
    @IBOutlet weak var passEntrantType: UILabel!
    @IBOutlet weak var accessPermisions: UILabel!    
    @IBOutlet weak var ridePermissions: UILabel!
    @IBOutlet weak var foodPermissions: UILabel!
    @IBOutlet weak var merchPermissions: UILabel!
    @IBOutlet weak var requiredInfo: UILabel!

    
    // Access Testing @IBOutlets
    @IBOutlet weak var testResults: UILabel!
    @IBOutlet weak var testResultsView: UIView!
    
    /* Access Testing @IBAction Buttons */
    
    
    
    // Testing Buttons
    @IBAction func areaAccessButton(_ sender: ButtonDesign) {
        
        swipeAreaAccess()
        
    }
    
    @IBAction func rideAccessButton(_ sender: ButtonDesign) {
        
        swipeRidePrivileges(entrant!)
        
    }
    
    @IBAction func discountAccessButton(_ sender: ButtonDesign) {
        
        swipeDiscount(entrant!)
        
    }
    
    @IBAction func requiredInfoButton(_ sender: ButtonDesign) {
        
        swipeRequiredInfo(entrant!)
        
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
        if entrantType.contains(.child) || entrantType.contains(.adult) || entrantType.contains(.vip){
            passFullName?.text = "General Pass"
        }
    }
    
    func permissionsAreValid() {
        
        var areaArray = [String]()
        var rideArray = [String]()
        
        guard let areaAccess = entrant?.areaAccess, let ridePrivileges = entrant?.ridePrivileges, let discountAmount = entrant?.discountAmount, let discountAccess = entrant?.discountAccess, let requiredInformation = entrant?.requiredInformation  else {
            print("oops no permissions in CreateNewPassViewController")
            return
        }
        print("YAY permissions are in CreateNewPassViewController")
        print("\(areaAccess)\n\(ridePrivileges)\n\(discountAccess)\n\(discountAmount)\n\(requiredInformation)")
        
        for area in areaAccess {
            areaArray.append(area.rawValue)
            accessPermisions?.text = "- \(areaArray.joined(separator: ", ")) Areas"
        }
                
        for ride in ridePrivileges {
            rideArray.append(ride.rawValue)
            ridePermissions?.text = "- \(rideArray.joined(separator: ", "))"
        }
        
        if discountAccess.contains(.none) {
            foodPermissions?.text = "- Food Discount: \(discountAccess[0].rawValue)"
            merchPermissions?.text = "- Merchandise Discount: \(discountAccess[0].rawValue)"
        } else if discountAccess.contains(.food) {
            foodPermissions?.text = "- \(discountAmount[0].rawValue) \(discountAccess[0].rawValue)"
            merchPermissions?.text = "- \(discountAmount[1].rawValue) \(discountAccess[1].rawValue)"
        }
        
        requiredInfo?.text = "- Required Information: \(requiredInformation[0].rawValue)"
        
    }
    
    // function to pull out permissions inof as strings and save to variable to pass in to above passPermissions?.textfield
    
    func swipeRequiredInfo(_ entrant: EntrantTypeable) {
        
        for info in entrant.requiredInformation {
            switch info {
            case .business:
                testResults.text = "must provide required business information"
                testResults.font = UIFont.boldSystemFont(ofSize: testResults.font.pointSize)
                testResultsView.backgroundColor = UIColor(red:0.80, green:0.78, blue:0.81, alpha:1.0)
                testResults.textColor = UIColor.black
            case .personal:
                testResults.text = "must provide required personal information"
                testResults.font = UIFont.boldSystemFont(ofSize: testResults.font.pointSize)
                testResultsView.backgroundColor = UIColor(red:0.80, green:0.78, blue:0.81, alpha:1.0)
                testResults.textColor = UIColor.black
            case .none:
                testResults.text = "none"
                testResults.font = UIFont.boldSystemFont(ofSize: testResults.font.pointSize)
                testResultsView.backgroundColor = UIColor(red:0.80, green:0.78, blue:0.81, alpha:1.0)
                testResults.textColor = UIColor.black
            }
        }
    }
    
    func swipeDiscount(_ entrant: EntrantTypeable) {
        
        for discount in entrant.discountAccess {
            switch discount {
                
            case .food, .merch:
                testResults.text = "VALID: pass holder receives food & merch discount"
                testResults.font = UIFont.boldSystemFont(ofSize: testResults.font.pointSize)
                testResultsView.backgroundColor = UIColor(red:0.00, green:0.50, blue:0.00, alpha:1.0)
                testResults.textColor = UIColor.white

            case .none:
                testResults.text = "INVALID: no discounts"
                testResults.font = UIFont.boldSystemFont(ofSize: testResults.font.pointSize)
                testResultsView.backgroundColor = UIColor(red:1.00, green:0.00, blue:0.00, alpha:1.0)
                testResults.textColor = UIColor.white
            
            }
        }
    }
    
    func swipeRidePrivileges(_ entrant: EntrantTypeable) {
        
        for privilege in entrant.ridePrivileges {
            switch privilege {
            case .all:
                testResults.text = "VALID: pass holder may ride the attraction"
                testResults.font = UIFont.boldSystemFont(ofSize: testResults.font.pointSize)
                testResultsView.backgroundColor = UIColor(red:0.00, green:0.50, blue:0.00, alpha:1.0)
                testResults.textColor = UIColor.white
            case .skip:
                testResults.text = "VALID: pass holder may skip line of attractions"
                testResults.font = UIFont.boldSystemFont(ofSize: testResults.font.pointSize)
                testResultsView.backgroundColor = UIColor(red:0.00, green:0.50, blue:0.00, alpha:1.0)
                testResults.textColor = UIColor.white
            case .deferToRules:
                testResults.text = "INVALID: pass holder must provide permissions"
                testResults.font = UIFont.boldSystemFont(ofSize: testResults.font.pointSize)
                testResultsView.backgroundColor = UIColor(red:0.00, green:0.50, blue:0.00, alpha:1.0)
                testResults.textColor = UIColor.white
            case .none:
                testResults.text = "INVALID: pass holder has no ride access privileges"
                testResults.font = UIFont.boldSystemFont(ofSize: testResults.font.pointSize)
                testResultsView.backgroundColor = UIColor(red:1.00, green:0.00, blue:0.00, alpha:1.0)
                testResults.textColor = UIColor.white
            }
        }
    }
    
    func swipeAreaAccess() {
        
        var areaArray = [String]()
        
        guard let areaAccess = entrant?.areaAccess else {
            print("oops no area permissions in CreateNewPassViewController")
            return
        }
        print("YAY permissions are in CreateNewPassViewController")
        print("\(areaAccess)")
        for area in areaAccess {
            areaArray.append(area.rawValue)
            testResults?.text = "VALID: \(areaArray.joined(separator: ", ")) Areas"
            testResults.font = UIFont.boldSystemFont(ofSize: testResults.font.pointSize)
            testResultsView.backgroundColor = UIColor(red:0.00, green:0.50, blue:0.00, alpha:1.0)
            testResults.textColor = UIColor.white
        }
    }
}










