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
        } else {
            animateView(view: subNavStackView, toHidden: true)
        }
        
    }

    @IBAction func employeeNavButton(_ sender: UIButton) {
        if subNavStackView.isHidden {
            animateView(view: subNavStackView, toHidden: false)
            subNavOption1.setTitle("Hourly - Food Services", for: .normal)
            subNavOption2.setTitle("Hourly - Ride Services", for: .normal)
            subNavOption3.setTitle("Hourly - Maintenance", for: .normal)
            subNavOption4.isHidden = true
            subNavOption5.isHidden = true
        } else {
            animateView(view: subNavStackView, toHidden: true)
        }
    }
    
    @IBAction func managerNavButton(_ sender: UIButton) {
        if subNavStackView.isHidden {
            animateView(view: subNavStackView, toHidden: false)
            subNavOption1.setTitle("Shift Manager", for: .normal)
            subNavOption2.setTitle("General Manager", for: .normal)
            subNavOption3.setTitle("Senior Manager", for: .normal)
            subNavOption4.isHidden = true
            subNavOption5.isHidden = true
        } else {
            animateView(view: subNavStackView, toHidden: true)
        }
    }
    @IBAction func contractorNavButton(_ sender: UIButton) {
        if subNavStackView.isHidden {
            animateView(view: subNavStackView, toHidden: false)
            subNavOption1.setTitle("Proj #1001", for: .normal)
            subNavOption2.setTitle("Proj #1002", for: .normal)
            subNavOption3.setTitle("Proj #1003", for: .normal)
            subNavOption4.setTitle("Proj #2001", for: .normal)
            subNavOption5.setTitle("Proj #2002", for: .normal)
        } else {
            animateView(view: subNavStackView, toHidden: true)
        }
    }
    @IBAction func vendorNavButton(_ sender: UIButton) {
        if subNavStackView.isHidden {
            animateView(view: subNavStackView, toHidden: false)
            subNavOption1.setTitle("Acme", for: .normal)
            subNavOption2.setTitle("Orkin", for: .normal)
            subNavOption3.setTitle("FedEx", for: .normal)
            subNavOption4.setTitle("NW Electrical", for: .normal)
            subNavOption5.isHidden = true
        } else {
            animateView(view: subNavStackView, toHidden: true)
        }
    }
    
    
    // SubNavigation Buttons
    @IBAction func subNavOption1(_ sender: UIButton) {
    }
    @IBAction func subNavOption2(_ sender: UIButton) {
    }
    @IBAction func subNavOption3(_ sender: UIButton) {
    }
    @IBAction func subNavOption4(_ sender: UIButton) {
    }
    @IBAction func subNavOption5(_ sender: UIButton) {
    }


    // Pass Generators
    @IBAction func generatePass(_ sender: ButtonDesign) {
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
