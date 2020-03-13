//
//  ShapeButton.swift
//  Drawing Pad - SB
//
//  Created by Xiaoping Jia on 12/24/19.
//  Copyright © 2019 DePaul University. All rights reserved.
//

import UIKit

class ShapeButton: UIButton {
    
    var shape: ShapeType = .Line {
        didSet {
            setNeedsDisplay()
        }
    }

    var color: UIColor = UIColor.blue {
        didSet {
            setNeedsDisplay()
        }
    }
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        if let context = UIGraphicsGetCurrentContext() {
            context.setStrokeColor(color.cgColor)
            context.setFillColor(color.cgColor)
            context.setLineWidth(2)
            
            let x1: CGFloat = 5
            let y1: CGFloat = 5
            let x2: CGFloat = frame.width - 5
            let y2: CGFloat = frame.height - 5
            let rect = CGRect(x: x1, y: y1 + 5, width: frame.width - 10, height: frame.height - 20)
            switch shape {
            case .Line:
                context.move(to: CGPoint(x: x1, y: y1))
                context.addLine(to: CGPoint(x: x2, y: y2))
                context.strokePath()
            case .Ellipse:
                context.strokeEllipse(in: rect)
            case .Rectangle:
                context.stroke(rect)
            case .FilledEllipse:
                context.fillEllipse(in: rect)
            case .FilledRectangle:
                context.fill(rect)
            case .Scribble:
                context.move(to: CGPoint(x: x1, y: y1))
                context.addCurve(to: CGPoint(x: x2, y: y2),
                                  control1: CGPoint(x: x1 + 80, y: y1 - 10),
                                  control2: CGPoint(x: x2 - 80, y: y2 + 10))
                context.strokePath()
            }
        }
    }
    

}
