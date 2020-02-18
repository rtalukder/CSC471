//
//  ViewController.swift
//  TalukderR_HW5_CSC471
//
//  Created by Raquib Talukder on 2/17/20.
//  Copyright © 2020 DePaul University. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var textFields: [UITextField]!
    
    @IBOutlet weak var listLabel: UILabel!
    
    @IBAction func clearAction() {
        for tf in textFields {
            tf.text = ""
        }
        listLabel.text = ""
    }
    
    @IBAction func newItemClear(_ sender: Any) {
        for tf in textFields {
            tf.text = ""
        }
    }
    
    @IBAction func editEnded(_ sender: UITextField) {
        sender.resignFirstResponder()
    }
    

    @IBAction func backgroundTouched(_ sender: UIControl) {
        for tf in textFields {
            tf.resignFirstResponder()
        }
    }
    
    @IBAction func addItem() {
        var input: [String] = []
        for tf in textFields {
            var inputText = tf.text ?? ""
            input.append(inputText)
        }
        
        let isInt = { (inputText: String) -> Bool in return Int(inputText) != nil }
        
        if (isInt(input[1]) && input[0] != "") {
            var message = "\n\(input[1])x \(input[0])"
            listLabel.text = listLabel.text! + message
        }
        else if (input[0] == ""){
            let title = "Empty Description"
            let alertMessage = "Please type in an item description."
            let alertController =
                UIAlertController(title: title,
                                  message: alertMessage,
                                  preferredStyle: .alert)

            let cancelAction =
                UIAlertAction(title: "OK",
                              style: .cancel,
                              handler: nil)
            alertController.addAction(cancelAction)
            present(alertController,
                    animated: true,
                    completion: nil)
        }
        else {
            let title = "Incorrect Quantity Type"
            let alertMessage = "Please only use integers for item quantities."
            let alertController =
                UIAlertController(title: title,
                                  message: alertMessage,
                                  preferredStyle: .alert)

            // Create the action.
            let cancelAction =
                UIAlertAction(title: "OK",
                              style: .cancel,
                              handler: nil)
            alertController.addAction(cancelAction)
            present(alertController,
                    animated: true,
                    completion: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

