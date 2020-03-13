//
//  MyView.swift
//  Drawing Demo - SB
//
//  Created by Xiaoping Jia on 12/24/19.
//  Copyright © 2019 DePaul University. All rights reserved.
//

import UIKit

class MyView: UIView {

    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        UIColor.gray.set()
        UIRectFill(bounds);
        
        let rect = CGRect(x: 50, y: 50, width: 200, height: 300)
        
        UIColor.red.set()
        UIRectFill(rect);
        
        UIColor.black.set()
        UIRectFrame(rect)
    }
    

}
