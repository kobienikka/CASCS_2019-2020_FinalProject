//
//  FoodTutorialsViewController.swift
//  iMessage Ext
//
//  Created by Kobie Nikka on 5/27/20.
//  Copyright © 2020 Kobie Nikka. All rights reserved.
//

import UIKit

class FoodTutorialsViewController: UIViewController {
    @IBOutlet weak var breakfastTextView: UITextView!
    @IBOutlet weak var lunchTextView: UITextView!
    @IBOutlet weak var dinnerTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateBreakfastTextView()
        updateLunchTextView()
        updateDinnerTextView()
        
        breakfastTextView.layer.cornerRadius = 15
        lunchTextView.layer.cornerRadius = 15
        dinnerTextView.layer.cornerRadius = 15
    }
    
    func updateBreakfastTextView() {
        let path = "https://www.youtube.com/watch?v=t4t1Vj5-NLQ"
        let text = breakfastTextView.text ?? ""
        let attributedString = NSAttributedString.makeHyperlink(for: path, in: text, as: "Click here for breakfast recipe videos")
        let font = breakfastTextView.font
        let textColor = breakfastTextView.textColor
        breakfastTextView.attributedText = attributedString
        breakfastTextView.font = font
        breakfastTextView.textColor = textColor
    }
    
    func updateLunchTextView() {
        let path = "https://www.youtube.com/watch?v=9_5wHw6l11o"
        let text = lunchTextView.text ?? ""
        let attributedString = NSAttributedString.makeHyperlink(for: path, in: text, as: "Click here for lunch recipe videos")
        let font = lunchTextView.font
        let textColor = lunchTextView.textColor
        lunchTextView.attributedText = attributedString
        lunchTextView.font = font
        lunchTextView.textColor = textColor
    }
    
    func  updateDinnerTextView() {
        let path = "https://www.youtube.com/watch?v=XBJKi2tcKkE"
        let text = dinnerTextView.text ?? ""
        let attributedString = NSAttributedString.makeHyperlink(for: path, in: text, as: "Click here for dinner recipe videos")
        let font = dinnerTextView.font
        let textColor = dinnerTextView.textColor
        dinnerTextView.attributedText = attributedString
        dinnerTextView.font = font
        dinnerTextView.textColor = textColor
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
