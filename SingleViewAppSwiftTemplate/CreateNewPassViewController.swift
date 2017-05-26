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
    }
    @IBAction func rideAccessButton(_ sender: ButtonDesign) {
    }
    @IBAction func discountAccessButton(_ sender: ButtonDesign) {
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
