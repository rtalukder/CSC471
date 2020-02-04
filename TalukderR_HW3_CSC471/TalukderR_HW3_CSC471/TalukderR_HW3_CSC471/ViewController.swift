//
//  ViewController.swift
//  TalukderR_HW3_CSC471
//
//  Created by Raquib Talukder on 2/3/20.
//  Copyright © 2020 Raquib Talukder. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    var result: Double = 0
    var savedResult: Double = 0
    var tempResult: Double = 0
    var operatorButtonTag = 0
    var calculate: Bool = false
    
    // label is updated with buttons pressed
    @IBAction func numberButtons(_ sender: UIButton) {
        if calculate == true {
            resultLabel.text = String(sender.tag - 1)
            savedResult = Double(resultLabel.text!)!
            calculate = false
        }
            
        else {
            resultLabel.text = resultLabel.text! + String(sender.tag - 1)
            savedResult = Double(resultLabel.text!)!
        }
    }
    
    // function for operators to perform user calculations
    @IBAction func operators(_ sender: UIButton) {
        // if !reset & !equal & !empty
        if sender.tag != 20 && sender.tag != 21 && resultLabel.text != "" {
            tempResult = Double(resultLabel.text!)!
            
            // if addition
            if sender.tag == 22 {
                resultLabel.text = "+"
            }
            // if minus
            else if sender.tag == 23 {
                resultLabel.text = "-"
            }
            // if multiplication
            else if sender.tag == 24 {
                resultLabel.text = "X"
            }
            // if division
            else if sender.tag == 25 {
                resultLabel.text = "/"
            }
            operatorButtonTag = sender.tag
            calculate = true
        }
        
        // if equal
        else if sender.tag == 21 {
            
            // if addition
            if operatorButtonTag == 22 {
                resultLabel.text = String(tempResult + savedResult)
            }
            // if minus
            else if operatorButtonTag == 23 {
                resultLabel.text = String(tempResult - savedResult)
            }
            //if multiplication
            else if operatorButtonTag == 24 {
                resultLabel.text = String(tempResult * savedResult)
            }
            // if division
            else if operatorButtonTag == 25 {
                resultLabel.text = String(tempResult / savedResult)
            }
        }
            
        // if reset
        else if sender.tag == 20 {
            result = 0
            savedResult = 0
            tempResult = 0
            operatorButtonTag = 0
            resultLabel.text = ""
            calculate = false
            }
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

