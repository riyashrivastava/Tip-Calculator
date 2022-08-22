//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Riya Shrivastava on 8/22/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var card: UIView!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // screen design
        card.layer.cornerRadius = 20.0
        card.layer.shadowRadius = 15.0
        card.layer.shadowOpacity = 0.2
        
        // gradient background
        let layer = CAGradientLayer()
        layer.frame = view.bounds
        layer.colors = [#colorLiteral(red: 0.9089609981, green: 0.7517344356, blue: 1, alpha: 1).cgColor, #colorLiteral(red: 0.5730569959, green: 0.8487328291, blue: 1, alpha: 1).cgColor]
        view.layer.insertSublayer(layer, at: 0)
        
    }

    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0 
        
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

