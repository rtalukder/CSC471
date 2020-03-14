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
    var shirtPicture: UIImageView
    var brandField: String
    var neckSizeField: String
    var sleeveLengthField: String
    var fitField: String
    var colorField: String
    var fabricField: String
    var collarField: String
    
    init(shirtPicture: UIImageView, brandField: String, neckSizeField: String, sleeveLengthField: String, fitField: String, colorField: String, fabricField: String, collarField: String) {
        
        self.shirtPicture = shirtPicture
        self.brandField = brandField
        self.neckSizeField = neckSizeField
        self.sleeveLengthField = sleeveLengthField
        self.fitField = fitField
        self.colorField = colorField
        self.fabricField = fabricField
        self.collarField = collarField
    }
}
