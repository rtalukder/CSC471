//
//  CanvasView.swift
//  Bouncing Ball - Timer - SB
//
//  Created by Xiaoping Jia on 12/24/19.
//  Copyright © 2019 DePaul University. All rights reserved.
//

import UIKit

class CanvasView: UIView {

    var x: CGFloat = 0, y: CGFloat = 0, r: CGFloat = 25
    var velocity: CGFloat = 1
    var dx: CGFloat = 1, dy: CGFloat = 1
    
    var timer : Timer?
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        if let context = UIGraphicsGetCurrentContext() {
            context.setFillColor(UIColor.orange.cgColor)
            let rect = CGRect(x: x - r, y: y - r, width: 2 * r, height: 2 * r)
            context.fillEllipse(in: rect)
        }
    }
    
    func start(_ center: Bool = true) {
        if center {
            x = bounds.width / 2
            y = bounds.height / 2
        }
        timer = Timer.scheduledTimer(withTimeInterval: 1.0/60.0,
                                     repeats: true) { _ in self.update() }
    }
    
    func stop() {
        timer?.invalidate()
    }
    
    func update() {
        x += dx * velocity
        y += dy * velocity
        if x < r || x > bounds.width - r {
            dx = -dx
        }
        if y < r || y > bounds.height - r {
            dy = -dy
        }
        self.setNeedsDisplay()
    }

}
