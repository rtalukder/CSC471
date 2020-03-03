//
//  SecondViewController.swift
//  TalukderR_HW7_CSC471
//
//  Created by Raquib Talukder on 3/2/20.
//  Copyright © 2020 DePaul University. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var dvrPowerStatus: UILabel!
    @IBOutlet weak var dvrPlaybackStatus: UILabel!
    @IBOutlet weak var powerSwitch: UISwitch!
    @IBOutlet var playbackControlButtons: [UIButton]!
    
    @IBAction func powerSwitchMoved(_ sender: UISwitch) {
        dvrPowerStatus.text = "\(sender.isOn ? "ON" : "OFF")"
        let enabledStatus = sender.isOn
        
        if sender.isOn {
            for buttons in playbackControlButtons {
                buttons.isEnabled = enabledStatus
            }
        }
        else {
            for buttons in playbackControlButtons {
                buttons.isEnabled = enabledStatus
            }
        }
    }
    
    @IBAction func playButton(_ sender: UIButton) {
        if dvrPlaybackStatus.text == "STOPPED" || dvrPlaybackStatus.text == "PAUSED" || dvrPlaybackStatus.text == "FAST REWINDING" || dvrPlaybackStatus.text == "FAST FORWARDING" {
            dvrPlaybackStatus.text = "PLAYING"
        }
        else if dvrPlaybackStatus.text == "RECORDING" {
            let alertTitle = "Playback Error"
            let alertMessage = "Cannot switch to 'Play' status."
            
            let alertController =
                UIAlertController(title: alertTitle,
                                  message: alertMessage,
                                  preferredStyle: .alert)

            let cancelAction =
                UIAlertAction(title: "OK",
                              style: .cancel,
                              handler: nil)
            
            let overrideAction =
                UIAlertAction(title: "Override",
                              style: .destructive,
                              handler: myOverridePlayHandler)
            
            alertController.addAction(cancelAction)
            alertController.addAction(overrideAction)
            
            present(alertController,
                    animated: true,
                    completion: nil)
        }
    }
        
    @IBAction func pauseButton(_ sender: UIButton) {
        if dvrPlaybackStatus.text == "PLAYING" {
            dvrPlaybackStatus.text = "PAUSED"
        }
        else {
            let alertTitle = "Playback Error"
            let alertMessage = "Cannot switch to 'Pause' status."
            
            let alertController =
                UIAlertController(title: alertTitle,
                                  message: alertMessage,
                                  preferredStyle: .alert)

            let cancelAction =
                UIAlertAction(title: "OK",
                              style: .cancel,
                              handler: nil)
            
            let overrideAction =
                UIAlertAction(title: "Override",
                              style: .destructive,
                              handler: myOverridePauseHandler)
            
            alertController.addAction(cancelAction)
            alertController.addAction(overrideAction)
            
            present(alertController,
                    animated: true,
                    completion: nil)
        }
    }
    
    @IBAction func stopButton(_ sender: UIButton) {
        dvrPlaybackStatus.text = "STOPPED"
    }
    
    @IBAction func recordButton(_ sender: UIButton) {
        if dvrPlaybackStatus.text == "STOPPED" {
            dvrPlaybackStatus.text = "RECORDING"
        }
        else {
            let alertTitle = "Playback Error"
            let alertMessage = "Cannot switch to 'Record' status."
            
            let alertController =
                UIAlertController(title: alertTitle,
                                  message: alertMessage,
                                  preferredStyle: .alert)

            let cancelAction =
                UIAlertAction(title: "OK",
                              style: .cancel,
                              handler: nil)
            
            let overrideAction =
                UIAlertAction(title: "Override",
                              style: .destructive,
                              handler: myOverrideRecordHandler)
            
            alertController.addAction(cancelAction)
            alertController.addAction(overrideAction)
            
            present(alertController,
                    animated: true,
                    completion: nil)
        }
    }
    
    @IBAction func rewindButton(_ sender: UIButton) {
        if dvrPlaybackStatus.text == "PLAYING" {
            dvrPlaybackStatus.text = "FAST REWINDING"
        }
        else {
            let alertTitle = "Playback Error"
            let alertMessage = "Cannot switch to 'Rewind' status."
            
            let alertController =
                UIAlertController(title: alertTitle,
                                  message: alertMessage,
                                  preferredStyle: .alert)

            let cancelAction =
                UIAlertAction(title: "OK",
                              style: .cancel,
                              handler: nil)
            
            let overrideAction =
                UIAlertAction(title: "Override",
                              style: .destructive,
                              handler: myOverrideRewindHandler)
            
            alertController.addAction(cancelAction)
            alertController.addAction(overrideAction)
            
            present(alertController,
                    animated: true,
                    completion: nil)
        }
    }
    
    @IBAction func forwardButton(_ sender: UIButton) {
        if dvrPlaybackStatus.text == "PLAYING" {
            dvrPlaybackStatus.text = "FAST FORWARDING"
        }
        else {
            let alertTitle = "Playback Error"
            let alertMessage = "Cannot switch to 'Forward' status."
            
            let alertController =
                UIAlertController(title: alertTitle,
                                  message: alertMessage,
                                  preferredStyle: .alert)

            let cancelAction =
                UIAlertAction(title: "OK",
                              style: .cancel,
                              handler: nil)
            
            let overrideAction =
                UIAlertAction(title: "Override",
                              style: .destructive,
                              handler: myOverrideForwardHandler)
            
            alertController.addAction(cancelAction)
            alertController.addAction(overrideAction)
            
            present(alertController,
                    animated: true,
                    completion: nil)
        }
    }
    
    func myOverridePlayHandler(alert: UIAlertAction) {
        dvrPlaybackStatus.text = "PLAYING"
        
        let overrideTitle = "Status Override"
        let overrideMessage = "DVR status has been overriden to 'Play'."
        
        
        let alertController =
            UIAlertController(title: overrideTitle,
                              message: overrideMessage,
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

    func myOverridePauseHandler(alert: UIAlertAction) {
        dvrPlaybackStatus.text = "PAUSED"
        
        let overrideTitle = "Status Override"
        let overrideMessage = "DVR status has been overriden to 'Pause'."
        
        
        let alertController =
            UIAlertController(title: overrideTitle,
                              message: overrideMessage,
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
    
    func myOverrideForwardHandler(alert: UIAlertAction) {
        dvrPlaybackStatus.text = "FAST FORWARDING"
        
        let overrideTitle = "Status Override"
        let overrideMessage = "DVR status has been overriden to 'Forward'."
        
        
        let alertController =
            UIAlertController(title: overrideTitle,
                              message: overrideMessage,
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

    func myOverrideRewindHandler(alert: UIAlertAction) {
        dvrPlaybackStatus.text = "FAST REWINDING"
        
        let overrideTitle = "Status Override"
        let overrideMessage = "DVR status has been overriden to 'Rewind'."
        
        
        let alertController =
            UIAlertController(title: overrideTitle,
                              message: overrideMessage,
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
    
    func myOverrideRecordHandler(alert: UIAlertAction) {
        dvrPlaybackStatus.text = "RECORDING"
        
        let overrideTitle = "Status Override"
        let overrideMessage = "DVR status has been overriden to 'Record'."
        
        
        let alertController =
            UIAlertController(title: overrideTitle,
                              message: overrideMessage,
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

