//
//  MenuViewController.swift
//  
//
//  Created by Kobie Nikka on 5/13/20.
//

import UIKit
import Messages

class MenuViewController: UIViewController {

    @IBOutlet weak var quantityLabel: UILabel!
    @IBOutlet weak var stepperOutlet: UIStepper!
    @IBOutlet weak var confirmOrderOutlet: UIButton!
    @IBOutlet weak var placeOrderOutlet: UIButton!
    var quantity: Double = 0
    var food: String = ""
    var finalOrder = MSMessage()
    
  
    @IBAction func stepper(_ sender: UIStepper) {
        quantityLabel.text = "Quantity: \(sender.value)"
        confirmOrderOutlet.isHidden = false
        quantity = sender.value
    }
    @IBAction func confirmOrderButton(_ sender: Any) {
        placeOrderOutlet.isHidden = false
        //appearance of message
        //var theCaption = "Can I please have \(quantity) \(food)"
        let layout = MSMessageTemplateLayout()
        layout.caption = "Can I please have \(quantity) \(food)"
        //layout.image = UIImage(named: "food.jpg")

        finalOrder.layout = layout
    }
    
    @IBAction func placeOrderButton(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        quantityLabel.text = "Quantity: \(quantity)"
        quantityLabel.isHidden = true
        stepperOutlet.isHidden = true
        confirmOrderOutlet.isHidden = true
        placeOrderOutlet.isHidden = true
    }
    
    @IBAction func pancakesButton(_ sender: Any) {
        quantityLabel.isHidden = false
        stepperOutlet.isHidden = false
        food = "pancakes"
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        let vc = segue.destination as! MessagesViewController
        // Pass the selected object to the new view controller.
        vc.seguedMessage = finalOrder
        print(finalOrder)
    }

}
