//
//  ViewController.swift
//  Gesture Recognizers Demo - SB
//
//  Created by Xiaoping Jia on 12/24/19.
//  Copyright © 2019 DePaul University. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var singleTapLabel: UILabel!
    
    @IBOutlet weak var doubleTapLabel: UILabel!
    
    @IBOutlet weak var panLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        for t in 1...3 {
            let singleTapRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.handleSingleTap))
            singleTapRecognizer.numberOfTapsRequired = 1
            singleTapRecognizer.numberOfTouchesRequired = t
            view.addGestureRecognizer(singleTapRecognizer)
            
            let doubleTapRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.handleDoubleTap))
            doubleTapRecognizer.numberOfTapsRequired = 2
            doubleTapRecognizer.numberOfTouchesRequired = t
            view.addGestureRecognizer(doubleTapRecognizer)
            singleTapRecognizer.require(toFail: doubleTapRecognizer)
        }
        
        let panRecognizer = UIPanGestureRecognizer(target: self, action: #selector(ViewController.handlePanGesture))
        panRecognizer.minimumNumberOfTouches = 1
        panRecognizer.maximumNumberOfTouches = 3
        view.addGestureRecognizer(panRecognizer)
    }
    
    @objc
    func handleSingleTap(_ sender: UITapGestureRecognizer) {
        let n = sender.numberOfTouches
        var message = ""
        for i in 0 ..< n {
            message += " \(sender.location(ofTouch: i, in: view))"
        }
        singleTapLabel.text = "Single tap at:" + message + "\nNumber of touches: \(n)"
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3)) {
            self.singleTapLabel.text = "No single tap detected"
        }
    }
    
    @objc
    func handleDoubleTap(_ sender: UITapGestureRecognizer) {
        let n = sender.numberOfTouches
        var message = ""
        for i in 0 ..< n {
            message += " \(sender.location(ofTouch: i, in: view))"
        }
        doubleTapLabel.text = "Double tap at:" + message + "\nNumber of touches: \(n)"
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3)) {
            self.doubleTapLabel.text = "No double tap detected"
        }
    }
    
    @objc
    func handlePanGesture(_ sender: UIPanGestureRecognizer) {
        let n = sender.numberOfTouches
        var message = ""
        for i in 0 ..< n {
            message += " \(sender.location(ofTouch: i, in: view))"
        }
        panLabel.text = "Pan gesture at:" + message + "\nNumber of touches: \(n)" +
            "\nTranslation: \(sender.translation(in: view))" +
        "\nVelocity: \(sender.velocity(in: view))"
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3)) {
            self.panLabel.text = "No pan gesture detected"
        }
    }
    
    
}

