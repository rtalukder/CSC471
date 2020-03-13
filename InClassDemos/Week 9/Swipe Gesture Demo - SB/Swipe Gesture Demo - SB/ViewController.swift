//
//  ViewController.swift
//  Swipe Gesture Demo - SB
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
        let h = view.bounds.height - 100
        container.frame = CGRect(x: 50, y: 50, width: w, height: h)
        view.addSubview(container)
        
        big_ben.frame = CGRect(x: 0, y: 0, width: w, height: h)
        eiffel.frame = big_ben.frame
        
        container.addSubview(eiffel)
        
        // Set up swipe gesture recognizers
        let upSwipeRecognizer = UISwipeGestureRecognizer(target: self, action:
            #selector(ViewController.handleUpSwipe))
        upSwipeRecognizer.numberOfTouchesRequired = 1
        upSwipeRecognizer.direction = .up
        view.addGestureRecognizer(upSwipeRecognizer)
        
        let downSwipeRecognizer = UISwipeGestureRecognizer(target: self, action:
            #selector(ViewController.handleDownSwipe))
        downSwipeRecognizer.numberOfTouchesRequired = 1
        downSwipeRecognizer.direction = .down
        view.addGestureRecognizer(downSwipeRecognizer)
        
        let horizontalSwipeRecognizer = UISwipeGestureRecognizer(target: self, action:
            #selector(ViewController.handleHorizontalSwipe))
        horizontalSwipeRecognizer.numberOfTouchesRequired = 1
        horizontalSwipeRecognizer.direction = [ .left, .right ]
        view.addGestureRecognizer(horizontalSwipeRecognizer)
        
        let pinchGestureRecognizer = UIPinchGestureRecognizer(target: self, action:
            #selector(ViewController.handlePinch))
        view.addGestureRecognizer(pinchGestureRecognizer)
    }
    
    @objc
    func handleUpSwipe(_ sender: UISwipeGestureRecognizer) {
        let view1 = big_ben.superview != nil ? big_ben : eiffel
        let view2 = big_ben.superview != nil ? eiffel : big_ben
        UIView.transition(from: view1, to: view2,
                          duration: 2.0, options: .transitionCurlUp,
                          completion: nil)
    }
    
    @objc
    func handleDownSwipe(_ sender: UISwipeGestureRecognizer) {
        let view1 = big_ben.superview != nil ? big_ben : eiffel
        let view2 = big_ben.superview != nil ? eiffel : big_ben
        UIView.transition(from: view1, to: view2,
                          duration: 2.0, options: .transitionCurlDown,
                          completion: nil)
    }
    
    @objc
    func handleHorizontalSwipe(_ sender: UISwipeGestureRecognizer) {
        let view1 = big_ben.superview != nil ? big_ben : eiffel
        let view2 = big_ben.superview != nil ? eiffel : big_ben
        UIView.transition(with: self.container, duration: 2.0,
                          options: .transitionCrossDissolve,
                          animations: {
                            view1.removeFromSuperview()
                            self.container.addSubview(view2)
        }, completion: nil)
    }
    
    @objc
    func handlePinch(_ sender: UIPinchGestureRecognizer) {
        let s = sender.scale
        container.transform = CGAffineTransform(a: s, b: 0, c: 0, d: s, tx: 0, ty: 0)
    }
    
}

