//
//  ViewController.swift
//  TalukderR_HW6_CSC471
//
//  Created by Raquib Talukder on 2/25/20.
//  Copyright © 2020 DePaul University. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var channelNumLabel: UILabel!
    var tempChannelNumLabel: String = ""
    
    @IBOutlet weak var powerLabel: UILabel!
    @IBOutlet weak var volumeNumLabel: UILabel!
    
    @IBOutlet weak var powerSwitch: UISwitch!
    @IBOutlet weak var volumeSlider: UISlider!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet var channelButtons: [UIButton]!
    
    @IBAction func numberButton(_ sender: UIButton) {
        if channelNumLabel.text == "" || Int(channelNumLabel.text!)! <= 99 {
            tempChannelNumLabel = channelNumLabel.text! + String(sender.tag - 1)
            channelNumLabel.text = (Int(tempChannelNumLabel)! >= 0 && Int(tempChannelNumLabel)! <= 99 ? tempChannelNumLabel : "")
            
            if (channelNumLabel.text!).count == 2 {
                channelNumLabel.text = (String(channelNumLabel.text!).starts(with: "0") ? String((channelNumLabel.text!).dropFirst()) : channelNumLabel.text)
            }
        }
    }
    
    @IBAction func channelUpDown(_ sender: UIButton) {
        if (sender.tag == 30) {
            if let tempNum = Int(channelNumLabel.text!) {
                channelNumLabel.text = (tempNum - 1 <= 0 ? "99" : String(tempNum - 1))
            }
            else {
                channelNumLabel.text = "99"
            }
        }
        else if (sender.tag == 40) {
            if let tempNum = Int(channelNumLabel.text!) {
                channelNumLabel.text = (tempNum + 1 > 99 ? "1" : String(tempNum + 1))
            }
            else {
                channelNumLabel.text = "1"
            }
        }
    }
    
    @IBAction func powerSwitchMoved(_ sender: UISwitch) {
        powerLabel.text = "\(sender.isOn ? "ON" : "OFF")"
        let enabledStatus = sender.isOn
        
        if sender.isOn {
            volumeSlider.isEnabled = enabledStatus
            segmentedControl.isEnabled = enabledStatus
            for buttons in channelButtons {
                buttons.isEnabled = enabledStatus
            }
        }
        else {
            volumeSlider.isEnabled = enabledStatus
            segmentedControl.isEnabled = enabledStatus
            for buttons in channelButtons {
                buttons.isEnabled = enabledStatus
            }
        }
    }
    
    @IBAction func volumeSliderMoved(_ sender: UISlider) {
        volumeNumLabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func quickSetControl(_ sender: UISegmentedControl) {
        if let name = sender.titleForSegment(at: sender.selectedSegmentIndex) {
            if name == "ABC" {
                channelNumLabel.text = "7"
            }
            else if name == "NBC" {
                channelNumLabel.text = "5"
            }
            
            else if name == "CBS" {
                channelNumLabel.text = "2"
            }
            else if name == "FOX" {
                channelNumLabel.text = "32"
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

