//
//  TouchView.swift
//  Multi-Touch Demo - SB
//
//  Created by Xiaoping Jia on 12/24/19.
//  Copyright © 2019 DePaul University. All rights reserved.
//

import UIKit

class TouchView: UIView {

    var points : [CGPoint] = []
    var message : String = "Touch view"
    var tapMessage : String = ""
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        
        message.draw(at: CGPoint(x: 20, y: 50), withAttributes: nil)
        tapMessage.draw(at: CGPoint(x: 20, y: 70), withAttributes: nil)

        if let context = UIGraphicsGetCurrentContext() {
            context.setFillColor(UIColor.orange.cgColor)
            let r: CGFloat = 10
            for p in points {
                let rect = CGRect(x: p.x - r, y: p.y - r, width: 2 * r, height: 2 * r)
                context.fillEllipse(in: rect)
            }
        }
    }

    var timer: Timer?
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        handleTouches("touchBegan", touches: touches)
        tapMessage = ""
        if let touch = touches.first {
            if touch.tapCount >= 2 {
                timer?.invalidate()
            }
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        handleTouches("touchMoved", touches: touches)
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        handleTouches("touchEnded", touches: touches)
        if let touch = touches.first {
            if touch.tapCount == 2 {
                handleDoubleTap()
            } else {
                timer = Timer.scheduledTimer(withTimeInterval: 0.3, repeats: false) {
                    _ in self.handleSingleTap()
                }
            }
        }
        Timer.scheduledTimer(withTimeInterval: 2, repeats: false) {
            _ in self.clearTouches()
        }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        handleTouches("touchCancelled", touches: touches)
    }
    
    func handleTouches(_ method: String, touches: Set<UITouch>) {
        message = method + "[\(touches.count)]:"
        points.removeAll(keepingCapacity: true)
        for touch in touches {
            let p = touch.location(in: self)
            message += String(format: " (%.2f, %.2f)", p.x, p.y)
            points.append(p)
        }
        setNeedsDisplay()
    }
    
    func handleSingleTap() {
        tapMessage = "Single tap!"
        print("Single tap!")
        setNeedsDisplay()
    }
    
    func handleDoubleTap() {
        tapMessage = "Double tap!!"
        print("Double tap!!")
        setNeedsDisplay()
    }
    
    func clearTouches() {
        message = ""
        tapMessage = ""
        points.removeAll(keepingCapacity: true)
        setNeedsDisplay()
    }

}
