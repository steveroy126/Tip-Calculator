//
//  ViewController.swift
//  Tippy
//
//  Created by Steve Roy on 1/8/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onTap(_ sender: Any) {
   
        
            view.endEditing(true)
        
        }
        
    @IBAction func calculatetip(_ sender: Any) {

    
            let bill = Double(billField.text!) ?? 0
            
            let tipPercentages = [0.15, 0.18, 0.20]
            
        let tip = bill * tipPercentages [tipControl.selectedSegmentIndex]
        let total = bill + tip
            
    
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
            
        }
    }
