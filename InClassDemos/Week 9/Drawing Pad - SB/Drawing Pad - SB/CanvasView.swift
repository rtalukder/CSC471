//
//  CanvasView.swift
//  Drawing Pad - SB
//
//  Created by Xiaoping Jia on 12/24/19.
//  Copyright © 2019 DePaul University. All rights reserved.
//

import UIKit

class CanvasView: UIView {

    var shape: ShapeType = .Line
    var color: UIColor = UIColor.blue
    var first: CGPoint = CGPoint.zero
    var last : CGPoint = CGPoint.zero
    var points: [CGPoint] = []
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        if let context = UIGraphicsGetCurrentContext() {
            context.setStrokeColor(color.cgColor)
            context.setFillColor(color.cgColor)
            
            let rect = CGRect(x: first.x, y: first.y, width: last.x - first.x, height: last.y - first.y)
            switch shape {
            case .Line:
                context.move(to: CGPoint(x: first.x, y: first.y))
                context.addLine(to: CGPoint(x: last.x, y: last.y))
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
                context.move(to: CGPoint(x: first.x, y: first.y))
                for p in points {
                    context.addLine(to: CGPoint(x: p.x, y: p.y))
                }
                context.strokePath()
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            first = touch.location(in: self)
            last = first
            points.removeAll(keepingCapacity: true)
            if shape == .Scribble {
                points.append(first)
            }
            setNeedsDisplay()
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            last = touch.location(in: self)
            if shape == .Scribble {
                points.append(last)
            }
            setNeedsDisplay()
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            last = touch.location(in: self)
            if shape == .Scribble {
                points.append(last)
            }
            setNeedsDisplay()
        }
    }
    

}
