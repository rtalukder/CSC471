//
//  ViewController.swift
//  Key Frame Animation - SB
//
//  Created by Xiaoping Jia on 12/24/19.
//  Copyright © 2019 DePaul University. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var delayOptions: UISegmentedControl!
       
    var objects: [UILabel] = []
    let colors = [ UIColor.blue, UIColor.cyan, UIColor.green, UIColor.orange, UIColor.magenta ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        delayOptions.selectedSegmentIndex = 0
        
        var x: CGFloat = 20
        for i in 0..<5 {
            let label = UILabel()
            label.backgroundColor = colors[i]
            label.textColor = UIColor.white
            label.textAlignment = .center
            label.font = UIFont.systemFont(ofSize: 40)
            label.text = "\(i + 1)"
            label.frame = CGRect(x: x, y: view.bounds.height - 75, width: 50, height: 50)
            view.addSubview(label)
            objects.append(label)
            x += 70
        }
        
    }

    @IBAction func reset(_ sender: UIButton) {
        var x: CGFloat = 20
        for label in objects {
            label.frame = CGRect(x: x, y: view.bounds.height - 75, width: 50, height: 50)
            label.transform = CGAffineTransform(rotationAngle: 0)
            x += 70
        }
    }
    
    @IBAction func startAnimation(_ sender: UIButton) {
        let duration = 2.0
        var delay = 0.0
        let dt = delayOptions.selectedSegmentIndex == 0 ? 0.0 : 2.0
        
        var x: CGFloat = 20
        UIView.animate(withDuration: duration, animations: {
            self.objects[0].frame = CGRect(x: x, y: 100, width: 50, height: 50)
            self.objects[0].transform = CGAffineTransform(rotationAngle: .pi)
        })
        
        x += 70
        delay += dt
        UIView.animate(withDuration: duration, delay: delay, options: UIView.AnimationOptions(), animations: {
            self.objects[1].frame = CGRect(x: x, y: 100, width: 50, height: 50)
            self.objects[1].transform = CGAffineTransform(rotationAngle: .pi / 2)
        }, completion: nil)
        
        x += 70
        delay += dt
        UIView.animate(withDuration: duration, delay: delay, options: UIView.AnimationOptions(), animations: {
            self.objects[2].frame = CGRect(x: x, y: 100, width: 50, height: 50)
            self.objects[2].transform = CGAffineTransform(rotationAngle: 2 * .pi)
        }, completion: nil)
        
        x += 70
        delay += dt
        UIView.animateKeyframes(withDuration: duration, delay: delay, options:
            UIView.KeyframeAnimationOptions(), animations: {
                self.objects[3].frame = CGRect(x: x, y: 100, width: 50, height: 50)
                
                UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 1/2, animations: {
                    self.objects[3].transform = CGAffineTransform(rotationAngle: .pi)
                })
                UIView.addKeyframe(withRelativeStartTime: 1/2, relativeDuration: 1/2, animations: {
                    self.objects[3].transform = CGAffineTransform(rotationAngle: 2 * .pi)
                })
        }, completion: nil)
        
        
        x += 70
        delay += dt
        UIView.animateKeyframes(withDuration: duration, delay: delay, options: UIView.KeyframeAnimationOptions(), animations: {
            self.objects[4].frame = CGRect(x: x, y: 100, width: 50, height: 50)
            
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 1/3, animations: {
                self.objects[4].transform = CGAffineTransform(rotationAngle: .pi * 2 / 3)
            })
            UIView.addKeyframe(withRelativeStartTime: 1/3, relativeDuration: 1/3, animations: {
                self.objects[4].transform = CGAffineTransform(rotationAngle: .pi * 4 / 3)
            })
            UIView.addKeyframe(withRelativeStartTime: 2/3, relativeDuration: 1/3, animations: {
                self.objects[4].transform = CGAffineTransform(rotationAngle: .pi * 2)
            })
        }, completion: nil)
    }
    
}

