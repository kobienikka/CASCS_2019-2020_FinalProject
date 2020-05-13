//
//  MenuViewController.swift
//  
//
//  Created by Kobie Nikka on 5/13/20.
//

import UIKit

class MenuViewController: UIViewController {

    @IBOutlet weak var quantityLabel: UILabel!
    @IBOutlet weak var stepperOutlet: UIStepper!
    var quantity: Int = 0
    
    @IBAction func stepperButton(_ sender: Any) {
        //this should get the value of the stepper
        //stepperOutlet.hashValue = quantity
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        quantityLabel.text = "Quantity: \(quantity)"
        quantityLabel.isHidden = true
        stepperOutlet.isHidden = true
    }
    
    @IBAction func pancakesButton(_ sender: Any) {
        quantityLabel.isHidden = false
        stepperOutlet.isHidden = false
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
