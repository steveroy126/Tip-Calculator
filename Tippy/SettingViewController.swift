//
//  SettingViewController.swift
//  Tippy
//
//  Created by Steve Roy on 1/8/21.
//

import UIKit

class SettingViewController: UIViewController {

    @IBOutlet weak var splittotalLabel: UILabel!
    @IBOutlet weak var totalfield: UITextField!
    @IBOutlet weak var peopleLabel: UILabel!
    @IBAction func stepper(_ sender: UIStepper) {
        peopleLabel.text = String(sender.value)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

     
    }
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    @IBAction func calculate(_ sender: Any) {
        let total = Double(totalfield.text!) ?? 0
        let people = Double(peopleLabel.text!) ?? 0
        let splittotal = total / people
        
        splittotalLabel.text = "$\(splittotal)"
        
    }
    
}
