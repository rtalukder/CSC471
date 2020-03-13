//
//  YellowViewController.swift
//  Two Views - SB
//
//  Created by Xiaoping Jia on 12/21/19.
//  Copyright © 2019 DePaul University. All rights reserved.
//

import UIKit

class YellowViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func switchToBlue(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        var title : String? = "An App with Two Scenes"
        var message : String? = "Your are in the yellow scene"

        var actions: [UIAlertAction] = []
        
        let cancelAction =
        UIAlertAction(title: "Yes! Here is fine.",
            style: .default,
            handler: nil)
        let returnAction =
        UIAlertAction(title: "No! Take me back to the blue scene.",
            style: .destructive) { _ in
                self.dismiss(animated: true, completion: nil) }

        switch sender.currentTitle ?? "" {
        case "No Title":
            title = nil
            message = nil
            fallthrough
        case "Okay / Cancel":
            actions += [ cancelAction, returnAction ]
            
        case "More Choices":
            let safeActionOne =
                UIAlertAction(title: "Safe Choice One",
                    style: .default,
                    handler: nil)
            let safeActionTwo =
                UIAlertAction(title: "Safe Choice Two",
                    style: .default,
                    handler: nil)
            actions += [ cancelAction, safeActionOne, safeActionTwo, returnAction ]
        default:
            actions += [ cancelAction ]
            
        }
        
        
        let alertController =
        UIAlertController(title: title,
            message: message,
            preferredStyle: .actionSheet)
        for action in actions {
            alertController.addAction(action)
        }
        present(alertController,
            animated: true,
            completion: nil)
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
