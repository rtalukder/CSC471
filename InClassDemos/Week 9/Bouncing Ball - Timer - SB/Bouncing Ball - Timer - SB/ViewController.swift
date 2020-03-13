//
//  ViewController.swift
//  Bouncing Ball - Timer - SB
//
//  Created by Xiaoping Jia on 12/24/19.
//  Copyright © 2019 DePaul University. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var canvas: CanvasView!
    
    var paused = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        canvas.start()
        paused = false
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        canvas.stop()
        paused = true
    }
    
    @IBAction func velocityChanged(_ sender: UISlider) {
        canvas.velocity = CGFloat(sender.value)
    }
    
    @IBAction func startStop(_ sender: UIButton) {
        sender.setTitle(paused ? "Stop" : "Start", for: .normal)
        if paused {
            canvas.start(false)
        } else {
            canvas.stop()
        }
        paused = !paused
    }
    
}

