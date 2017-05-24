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
    @IBOutlet weak var PassFullName: UILabel!
    @IBOutlet weak var PassEntrantType: UILabel!
    @IBOutlet weak var PassPermissions: UILabel!
    
    // Access Testing @IBOutlets
    @IBOutlet weak var TestResults: UILabel!
    
    
    /* Access Testing @IBAction Buttons */
    
    // Testing Buttons
    @IBAction func AreaAccess(_ sender: UIButton) {
    }
    @IBAction func RideAccess(_ sender: UIButton) {
    }
    @IBAction func DiscountAccess(_ sender: UIButton) {
    }
    
    // Create New Pass @IBOutlet
    @IBAction func CreateNewPass(_ sender: UIButton) {
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
