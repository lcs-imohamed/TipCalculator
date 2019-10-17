//
//  ViewController.swift
//  TipCalculator
//
//  Created by Mohamed, Ilana on 2019-10-10.
//  Copyright © 2019 Mohamed, Ilana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK: Properties
    @IBOutlet weak var tipPercentage: UITextField!
    @IBOutlet weak var numberOfPeople: UITextField!
    @IBOutlet weak var totalTip: UILabel!
    @IBOutlet weak var tipPerPerson: UILabel!
    @IBOutlet weak var billAmount: UITextField!
    
    
    
    
    //MARK: Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
        
    }
    
    
    @IBAction func calculateTip(_ sender: Any) {
        
        // Obtain value from guess field
        let billAmountAsString = billAmount.text!
        let tipPercentAsString = tipPercentage.text!
        let amountOfPeopleAsString = numberOfPeople.text!
        
        //Convert strings to double data types
        let billAmountAsDouble = Double(billAmountAsString)!
        let tipPercentAsDouble = Double(tipPercentAsString)!
        let amountOfPeopleAsDouble = Double(amountOfPeopleAsString)!
        
        //Calculate the total tip
        let tipAmountDollars = billAmountAsDouble * tipPercentAsDouble
        
        
        //Show the total tip
        totalTip.text = String(tipAmountDollars)
        
        //Calculate the tip per person
        let tipPerPersonDollars = tipAmountDollars / amountOfPeopleAsDouble

        //Show the tip per person
        tipPerPerson.text = String(tipPerPersonDollars)
    }
    
    
    
}

