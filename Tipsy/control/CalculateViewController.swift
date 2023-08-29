//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var inputNumber: UITextField!
    @IBOutlet weak var numberSteps: UILabel!
    @IBOutlet weak var tipIs0: UIButton!
    @IBOutlet weak var tipIs10: UIButton!
    @IBOutlet weak var tipIs20: UIButton!
    
    
    var tip = 0.0
    var result = "0.0"
    var numberOfPeople = 2
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func tipSelectPressed(_ sender: UIButton) {
        
        inputNumber.endEditing(true)
        
        tipIs0.isSelected = false
        tipIs10.isSelected = false
        tipIs20.isSelected = false
        
        sender.isSelected = true
        let theTipIs = sender.currentTitle!
        let dropEndString = theTipIs.dropLast()
        let DoubleTip = Double(dropEndString)!
        tip = DoubleTip / 100

    }
    
    @IBAction func stepperValueChange(_ sender: UIStepper) {
        numberSteps.text = String(format: "%.0f", sender.value)
        numberOfPeople = Int(sender.value)
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let fieldNumber = inputNumber.text!
        if fieldNumber != "" {
            let fieldNumberInt = Double(fieldNumber)!
            let calculateBill = (fieldNumberInt * (1+tip))/Double(numberOfPeople)
            result = String(format: "%.0f", calculateBill)
        }
        
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            
            destinationVC.result = result
            destinationVC.people = Int(numberOfPeople)
            destinationVC.tip = Int(tip * 100)
        }
    }
    
    
}

