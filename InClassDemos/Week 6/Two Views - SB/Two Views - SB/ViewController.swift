//
//  ViewController.swift
//  Two Views - SB
//
//  Created by Xiaoping Jia on 12/21/19.
//  Copyright © 2019 DePaul University. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        let title = "An App with Two Scenes"
        let message = "Your are in the blue scene"
        let alertController =
            UIAlertController(title: title,
                message: message,
                preferredStyle: .alert)
        
        var actions: [UIAlertAction] = []
        
        let cancelAction =
            UIAlertAction(title: "I don't care!",
                style: .cancel,
                handler: nil)
        let okayAction =
            UIAlertAction(title: "Okay, got it!",
                style: .default) { _ in
                    let confirmAlertController = UIAlertController(title: "Are you sure?",
                        message: nil,
                        preferredStyle: .alert)
                    confirmAlertController.addAction(UIAlertAction(title: "Confirm", style: .default, handler: nil))
                    self.present(confirmAlertController,
                        animated: true,
                        completion: nil)
                }
        switch sender.currentTitle ?? "" {
        case "Simple": actions += [ okayAction ]
        case "Okay / Cancel": actions += [ cancelAction, okayAction ]
        case "More Choices":
            let choiceOneAction =
            UIAlertAction(title: "Choice One",
                style: .default,
                handler: nil)
            let choiceTwoAction =
            UIAlertAction(title: "Choice Two",
                style: .default,
                handler: nil)
            actions += [ cancelAction, choiceOneAction, choiceTwoAction, okayAction ]
        case "Text Entry":
            var text : UITextField? = nil
            // Add the text field for text entry.
            alertController.addTextField { textField in
                // If you need to customize the text field, you can do so here.
                text = textField
                textField.isSecureTextEntry = true
            }
            let textAction =
                UIAlertAction(title: "Okay, got it!",
                    style: .default) { _ in
                        NSLog("You entered: \(text?.text ?? "")")
            }
            actions += [ textAction ]
        default:
            actions += [ cancelAction ]
        }
        
        for action in actions {
            alertController.addAction(action)
        }
        present(alertController,
            animated: true,
            completion: nil)
    }

}

