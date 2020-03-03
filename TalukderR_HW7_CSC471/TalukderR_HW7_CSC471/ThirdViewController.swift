//
//  ThirdViewController.swift
//  TalukderR_HW7_CSC471
//
//  Created by Raquib Talukder on 3/2/20.
//  Copyright © 2020 DePaul University. All rights reserved.
//

import UIKit

struct segmentedControl0 {
    var channelNickname = "ABC"
    var channelNumber = 7
}

struct segmentedControl1 {
    var channelNickname = "NBC"
    var channelNumber = 5
}

struct segmentedControl2 {
    var channelNickname = "CBS"
    var channelNumber = 2
}

struct segmentedControl3 {
    var channelNickname = "FOX"
    var channelNumber = 32
}

var segCon0 = segmentedControl0()
var segCon1 = segmentedControl1()
var segCon2 = segmentedControl2()
var segCon3 = segmentedControl3()

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var channelNumber: UILabel!
    @IBOutlet weak var channelTextField: UITextField!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBAction func stepperChange(_ sender: UIStepper) {
        channelNumber.text = Int(sender.value).description
    }
    
    @IBAction func newItemClear(_ sender: Any) {
        channelTextField.text = ""
    }
    
    @IBAction func editEnded(_ sender: UITextField) {
        sender.resignFirstResponder()
    }
    
    @IBAction func backgroundTouched(_ sender: UIControl) {
        channelTextField.resignFirstResponder()
    }
    
    @IBAction func savePreset(_ sender: UIButton) {
        let input: String = channelTextField.text!
        
        if input.count <= 4 && input != "" {
            switch segmentedControl.selectedSegmentIndex {
            case 0:
                segCon0.channelNickname = input
                segCon0.channelNumber = Int(channelNumber.text!)!
            case 1:
                segCon1.channelNickname = input
                segCon1.channelNumber = Int(channelNumber.text!)!
            case 2:
                segCon2.channelNickname = input
                segCon2.channelNumber = Int(channelNumber.text!)!
            case 3:
                segCon3.channelNickname = input
                segCon3.channelNumber = Int(channelNumber.text!)!
            default:
                break
            }
        }
        else {
            let title = "Label Error"
            let alertMessage = "Channel nickname can only contain 1-4 characters."
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
        
        let alertMessage = "Preset \(Int(segmentedControl.selectedSegmentIndex) + 1) name changed to \(input). New Channel Number: \(channelNumber.text!)."
              let alertTitle = "Preset Saved"
              let alertController =
                  UIAlertController(title: alertTitle,
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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
