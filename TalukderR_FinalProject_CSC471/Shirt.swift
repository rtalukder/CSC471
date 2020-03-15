//
//  Shirts.swift
//  TalukderR_FinalProject_CSC471
//
//  Created by Raquib Talukder on 3/13/20.
//  Copyright © 2020 DePaul University. All rights reserved.
//

import Foundation
import UIKit

struct GlobalShirtObjectList {
    static var shirtObjectList: [Shirt] = []
}

class Shirt {
    var shirtPicture: UIImage
    var nickName: String
    var brandField: String
    var neckSizeField: String
    var sleeveLengthField: String
    var fitField: String
    var colorField: String
    var fabricField: String
    var collarField: String
    
    init(shirtPicture: UIImage, nickName: String, brandField: String, neckSizeField: String, sleeveLengthField: String, fitField: String, colorField: String, fabricField: String, collarField: String) {
        
        self.shirtPicture = shirtPicture
        self.nickName = nickName
        self.brandField = brandField
        self.neckSizeField = neckSizeField
        self.sleeveLengthField = sleeveLengthField
        self.fitField = fitField
        self.colorField = colorField
        self.fabricField = fabricField
        self.collarField = collarField
    }
}
