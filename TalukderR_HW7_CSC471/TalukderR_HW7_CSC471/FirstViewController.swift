//
//  FirstViewController.swift
//  TalukderR_HW7_CSC471
//
//  Created by Raquib Talukder on 3/2/20.
//  Copyright © 2020 DePaul University. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
//    var segCon0 = segmentedControl0()
//    var segCon1 = segmentedControl1()
//    var segCon2 = segmentedControl2()
//    var segCon3 = segmentedControl3()

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
        switch segmentedControl.selectedSegmentIndex {
            case 0:
            segmentedControl.setTitle(segCon0.channelNickname, forSegmentAt: 0)
                channelNumLabel.text = String(segCon0.channelNumber)
            case 1:
            segmentedControl.setTitle(segCon0.channelNickname, forSegmentAt: 0)
                channelNumLabel.text = String(segCon1.channelNumber)
            case 2:
            segmentedControl.setTitle(segCon0.channelNickname, forSegmentAt: 0)
                channelNumLabel.text = String(segCon2.channelNumber)
            case 3:
            segmentedControl.setTitle(segCon0.channelNickname, forSegmentAt: 0)
                channelNumLabel.text = String(segCon3.channelNumber)
            default:
                break
        }
    }
    
//    func updateView() {
//        segmentedControl.setTitle(segCon0.channelNickname, forSegmentAt: 0)
//        segmentedControl.setTitle(segCon1.channelNickname, forSegmentAt: 1)
//        segmentedControl.setTitle(segCon2.channelNickname, forSegmentAt: 2)
//        segmentedControl.setTitle(segCon3.channelNickname, forSegmentAt: 3)
//    }
    
    override func viewWillAppear(_ animated: Bool) {
        segmentedControl.setTitle(segCon0.channelNickname, forSegmentAt: 0)
        segmentedControl.setTitle(segCon1.channelNickname, forSegmentAt: 1)
        segmentedControl.setTitle(segCon2.channelNickname, forSegmentAt: 2)
        segmentedControl.setTitle(segCon3.channelNickname, forSegmentAt: 3)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

