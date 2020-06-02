//
//  MessagesViewController.swift
//  iMessage Ext
//
//  Created by Kobie Nikka on 5/8/20.
//  Copyright © 2020 Kobie Nikka. All rights reserved.
//

import UIKit
import Messages

class MessagesViewController: MSMessagesAppViewController {
    @IBOutlet weak var quantityLabel: UILabel!
    @IBOutlet weak var stepperOutlet: UIStepper!
    @IBOutlet weak var confirmOrderOutlet: UIButton!
    @IBOutlet weak var pancakesButtonOutlet: UIButton!
    @IBOutlet weak var sandwichButtonOutlet: UIButton!
    @IBOutlet weak var fruitButtonOutlet: UIButton!
    @IBOutlet weak var waterButtonOutlet: UIButton!
    @IBOutlet weak var foodButtonOutlet: UIButton!
    @IBOutlet weak var foodTutorialsOutlet: UIButton!
    @IBOutlet weak var orderLabel: UILabel!
    var quantity: Double = 0
    var food: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        quantityLabel.text = "Quantity: \(quantity)"
        pancakesButtonOutlet.layer.cornerRadius = 15
        sandwichButtonOutlet.layer.cornerRadius = 15
        fruitButtonOutlet.layer.cornerRadius = 15
        waterButtonOutlet.layer.cornerRadius = 15
        
        foodButtonOutlet.layer.cornerRadius = 15
        foodTutorialsOutlet.layer.cornerRadius = 15
        
        confirmOrderOutlet.layer.cornerRadius = 15
        
    }
    
    @IBAction func foodButton(_ sender: Any) {
        pancakesButtonOutlet.isHidden = false
        sandwichButtonOutlet.isHidden = false
        fruitButtonOutlet.isHidden = false
        waterButtonOutlet.isHidden = false
        foodButtonOutlet.isHidden = true
        foodTutorialsOutlet.isHidden = true
    }
    
    @IBAction func foodTutorials(_ sender: Any) {
        
    }
    
    @IBAction func stepper(_ sender: UIStepper) {
        quantityLabel.text = "Quantity: \(sender.value)"
        confirmOrderOutlet.isHidden = false
        quantity = sender.value
    }
    
    @IBAction func confirmOrderButton(_ sender: Any) {
           //appearance of message
        let layout = MSMessageTemplateLayout()
        layout.caption = "Can I please have \(quantity) \(food)"
        layout.image = UIImage(named: "food.jpg")
        
        let message = MSMessage()
        message.layout = layout
        
        activeConversation?.insert(message, completionHandler: nil)
       }
    
    @IBAction func pancakesButton(_ sender: Any) {
        orderLabel.isHidden = false
        quantityLabel.isHidden = false
        stepperOutlet.isHidden = false
        food = "pancakes"
        
        orderLabel.text = "How many pancakes would you like?"
        
        // make buttons disapear
        hideMenuChoices()
    }
    
    @IBAction func sandwichButton(_ sender: Any) {
        orderLabel.text = "How many sandwiches would you like?"
        orderLabel.isHidden = false
        quantityLabel.isHidden = false
        stepperOutlet.isHidden = false
        food = "sandwhich"
        
        // make buttons disapear
        hideMenuChoices()
    }
    
    @IBAction func fruitsButton(_ sender: Any) {
        orderLabel.text = "How many sandwiches would you like?"
        orderLabel.isHidden = false
        quantityLabel.isHidden = false
        stepperOutlet.isHidden = false
        food = "fruits"
        
        // make buttons disapear
        hideMenuChoices()
    }
    
    @IBAction func waterButton(_ sender: Any) {
//        quantityLabel.isHidden = false
//        stepperOutlet.isHidden = false
        orderLabel.text = "Would you like one glass of water?"
        quantity = 1
        food = "water"
        orderLabel.isHidden = false
        confirmOrderOutlet.isHidden = false
        
        // make buttons disapear
        hideMenuChoices()
    }
    

    
    @IBAction func backButton(_ sender: Any) {
        if orderLabel.isHidden == false && pancakesButtonOutlet.isHidden == true {
            unHideMenuChoices()
            quantityLabel.isHidden = true
            stepperOutlet.isHidden = true
            orderLabel.isHidden = true
            confirmOrderOutlet.isHidden = true
        } else if pancakesButtonOutlet.isHidden == false {
            hideMenuChoices()
            unHidePrimaryButtons()
            waterButtonOutlet.isHidden = true
        }
    }
    
    //Hide and unHide funcs
    func hideMenuChoices() {
        pancakesButtonOutlet.isHidden = true
        sandwichButtonOutlet.isHidden = true
        fruitButtonOutlet.isHidden = true
        waterButtonOutlet.isHidden = true
    }
    
    func unHideMenuChoices() {
        pancakesButtonOutlet.isHidden = false
        sandwichButtonOutlet.isHidden = false
        fruitButtonOutlet.isHidden = false
        waterButtonOutlet.isHidden = false
    }
    
    func unHidePrimaryButtons() {
        waterButtonOutlet.isHidden = false
        foodButtonOutlet.isHidden = false
        foodTutorialsOutlet.isHidden = false
    }
    
    func hidePrimaryButtons() {
        waterButtonOutlet.isHidden = true
        foodButtonOutlet.isHidden = true
        foodTutorialsOutlet.isHidden = true
       }
    
    // MARK: - Conversation Handling
    
    override func willBecomeActive(with conversation: MSConversation) {
        // Called when the extension is about to move from the inactive to active state.
        // This will happen when the extension is about to present UI.
        
        // Use this method to configure the extension and restore previously stored state.
    }
    
    override func didResignActive(with conversation: MSConversation) {
        // Called when the extension is about to move from the active to inactive state.
        // This will happen when the user dissmises the extension, changes to a different
        // conversation or quits Messages.
        
        // Use this method to release shared resources, save user data, invalidate timers,
        // and store enough state information to restore your extension to its current state
        // in case it is terminated later.
    }
   
    override func didReceive(_ message: MSMessage, conversation: MSConversation) {
        // Called when a message arrives that was generated by another instance of this
        // extension on a remote device.
        
        // Use this method to trigger UI updates in response to the message.
    }
    
    override func didStartSending(_ message: MSMessage, conversation: MSConversation) {
        // Called when the user taps the send button.
    }
    
    override func didCancelSending(_ message: MSMessage, conversation: MSConversation) {
        // Called when the user deletes the message without sending it.
    
        // Use this to clean up state related to the deleted message.
    }
    
    override func willTransition(to presentationStyle: MSMessagesAppPresentationStyle) {
        // Called before the extension transitions to a new presentation style.
    
        // Use this method to prepare for the change in presentation style.
    }
    
    override func didTransition(to presentationStyle: MSMessagesAppPresentationStyle) {
        // Called after the extension transitions to a new presentation style.
    
        // Use this method to finalize any behaviors associated with the change in presentation style.
    }

}
