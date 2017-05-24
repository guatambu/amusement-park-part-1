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
    @IBOutlet weak var GuestNavButton: UIButton!
    @IBOutlet weak var EmployeeNavButton: UIButton!
    @IBOutlet weak var ManagerNavButton: UIButton!
    @IBOutlet weak var ContractorNavButton: UIButton!
    @IBOutlet weak var VendorNavButton: UIButton!

    // SubNavigation @IBOutlets
    @IBOutlet weak var SubNavOption1: UIButton!
    @IBOutlet weak var SubNavOption2: UIButton!
    @IBOutlet weak var SubNavOption3: UIButton!
    @IBOutlet weak var SubNavOption4: UIButton!
    @IBOutlet weak var SubNavOption5: UIButton!
    
    // User Data TextField @IBOutlets
    @IBOutlet weak var DateOfBirth: UITextField!
    @IBOutlet weak var SocialSecurityNumber: UITextField!
    @IBOutlet weak var ProjectNumber: UITextField!
    @IBOutlet weak var FirstName: UITextField!
    @IBOutlet weak var LastName: UITextField!
    @IBOutlet weak var Company: UITextField!
    @IBOutlet weak var StreetAddress: UITextField!
    @IBOutlet weak var City: UITextField!
    @IBOutlet weak var State: UITextField!
    @IBOutlet weak var ZipCode: UITextField!
    
    
    /* Buttons @IBActions  */
    
    // Navigation
    @IBAction func GuestNavButton(_ sender: UIButton) {
    }
    @IBAction func EmployeeNavButton(_ sender: UIButton) {
    }
    @IBAction func ManagerNavButton(_ sender: UIButton) {
    }
    @IBAction func ContractorNavButton(_ sender: UIButton) {
    }
    @IBAction func VendorNavButton(_ sender: UIButton) {
    }
    
    // SubNavigation
    @IBAction func SubNavOption1(_ sender: UIButton) {
    }
    @IBAction func SubNavOption2(_ sender: UIButton) {
    }
    @IBAction func SubNavOption3(_ sender: UIButton) {
    }
    @IBAction func SubNavOption4(_ sender: UIButton) {
    }
    @IBAction func SubNavOption5(_ sender: UIButton) {
    }

    // Pass Generators
    @IBAction func GeneratePass(_ sender: UIButton) {
    }
    @IBAction func PopulateData(_ sender: UIButton) {
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
