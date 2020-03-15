//
//  TypesShirts.swift
//  TalukderR_FinalProject_CSC471
//
//  Created by Raquib Talukder on 3/14/20.
//  Copyright © 2020 DePaul University. All rights reserved.
//

//Information about shirt types taken from: https://www.macys.com/ce/splash/dress-shirt-fit-guide/index

import Foundation
import UIKit

let shirtTypes = [
    TypesShirts(shirtType: "Athletic Fit",
                shirtDescription: "Accentuate the positives. Cut broader through the chest, shoulders & arms, and narrow at the waist, this look strikes the perfect balance.",
                imageFilePath: "shirtTypes/athleticFit.jpg"),
    
    TypesShirts(shirtType: "Classic Fit",
                shirtDescription: "Find your comfort zone. This traditional style features a generous fit through the chest & waist, with standard armholes & fuller sleeves.",
                imageFilePath: "shirtTypes/classic.jpg"),
    
    TypesShirts(shirtType: "Extra Slim Fit",
                shirtDescription: "Play it close: a narrow cut through the chest & waist—along with trim sleeves with higher armholes— creates a contemporary look.",
                imageFilePath: "shirtTypes/extraSlimFit.jpg"),
    
    TypesShirts(shirtType: "Slim Fit",
                shirtDescription: "For that smart tailored look, a straight, close cut throughout the chest & waist with tapered sleeves % slightly higher armholes is the way to go.",
                imageFilePath: "shirtTypes/slimFit.jpg")
]

class TypesShirts {
    var shirtType: String
    var shirtDescription: String
    var imageFilePath: String

    init(shirtType: String, shirtDescription: String, imageFilePath: String) {
        self.shirtType = shirtType
        self.shirtDescription = shirtDescription
        self.imageFilePath = imageFilePath
    }
}
