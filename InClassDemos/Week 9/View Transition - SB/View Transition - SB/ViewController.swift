//
//  ViewController.swift
//  View Transition - SB
//
//  Created by Xiaoping Jia on 12/24/19.
//  Copyright © 2019 DePaul University. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let container = UIView()
    let big_ben = UIImageView(image: UIImage(named: "Big Ben"))
    let eiffel = UIImageView(image: UIImage(named: "Eiffel"))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let w = view.bounds.width - 100
        let h = view.bounds.height - 200
        container.frame = CGRect(x: 50, y: 150, width: w, height: h)
        view.addSubview(container)
        
        big_ben.frame = CGRect(x: 0, y: 0, width: w, height: h)
        eiffel.frame = big_ben.frame
        
        container.addSubview(eiffel)
    }

    @IBAction func changeView(_ sender: UIButton) {
           // set a transition style
        var transitionOptions = UIView.AnimationOptions()
           if let title = sender.currentTitle {
               switch title {
               case "Curl Down":
                   transitionOptions = .transitionCurlDown
               case "Curl Up":
                   transitionOptions = .transitionCurlUp
               case "Dissolve":
                   transitionOptions = .transitionCrossDissolve
               case "Flip Left":
                   transitionOptions = .transitionFlipFromLeft
               case "Flip Right":
                   transitionOptions = .transitionFlipFromRight
               case "Flip Top":
                   transitionOptions = .transitionFlipFromTop
               case "Flip Bottom":
                   transitionOptions = .transitionFlipFromBottom
               default:
                   transitionOptions = .transitionCurlUp
               }
           }
           
           let view1 = big_ben.superview != nil ? big_ben : eiffel
           let view2 = big_ben.superview != nil ? eiffel : big_ben
           
           UIView.transition(with: self.container, duration: 2.0, options: transitionOptions, animations: {
               view1.removeFromSuperview()
               self.container.addSubview(view2)
               }, completion: nil)
           
           /*
           // The alternative version
           UIView.transition(from: view1, to: view2,
                             duration: 2.0, options: transitionOptions,
                             completion: nil)
           */
       }

}

