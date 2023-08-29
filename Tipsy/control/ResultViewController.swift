//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Bayu Septyan Nur Hidayat on 27/08/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var result = "0.0"
    var people = 2
    var tip = 10

    
    @IBOutlet weak var resultTips: UILabel!
    @IBOutlet weak var adviceTips: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        resultTips.text = String(result)
        adviceTips.text = "Split between \(people) people, with \(tip)% tip"
        
        
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
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


/*
 var tip: Double = 0.00
 var numberOfPeople: Int = 2
 var billTotal = 0.0
 
 inputNumber.endEditing(true)
 
 sender.isSelected = true
 let titleTips = sender.currentTitle!
 let StringTipsTitle = String(titleTips.dropLast())
 let IntStringTipsTitle = Double(StringTipsTitle)!
 tip = IntStringTipsTitle/100
 
 numberSteps.text = String(format: "%.0f", sender.value)
 numberOfPeople = Int(sender.value)
 
 
 let bill = inputNumber.text!
 
 if bill != "" {
     billTotal = Double(bill)!
     let result = (billTotal * (1 + tip)) / Double(numberOfPeople)
     let resultTo2DecimalPlaces = String(format: "%.2f", result)
     print(resultTo2DecimalPlaces)
 }
 */
