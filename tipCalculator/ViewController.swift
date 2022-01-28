//
//  ViewController.swift
//  tipCalculator
//
//  Created by Eric Liu on 12/31/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var numberOfPeople: UITextField!
    @IBOutlet weak var eachPerson: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        // Get bill amount & number of people
        let bill = Double(billAmountTextField.text!) ?? 0
        let number = Double(numberOfPeople.text!) ?? 0
        
        // Get total tip based on tipControl for each person
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        let each = total / number
        
        // Update tip & total
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        eachPerson.text = String(format: "$%.2f", each)
    }
    
}

