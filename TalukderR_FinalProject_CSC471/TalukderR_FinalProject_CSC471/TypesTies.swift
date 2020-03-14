//
//  TypesTies.swift
//  TalukderR_FinalProject_CSC471
//
//  Created by Raquib Talukder on 3/14/20.
//  Copyright © 2020 DePaul University. All rights reserved.
//

// Information about tie knot types taken from: https://www.realmenrealstyle.com/how-to-tie-a-tie/

import Foundation
import UIKit

let tieStyleTypes = [
    TypesTies(tieStyleType: "Balthus",
              imageFilePath: "tieKnotTypes/balthus-knot.jpg"),
    
    TypesTies(tieStyleType: "Bowtie",
              imageFilePath: "tieKnotTypes/bow-tie.jpg"),
    
    TypesTies(tieStyleType: "Cafe",
              imageFilePath: "tieKnotTypes/cafe-knot.jpg"),
    
    TypesTies(tieStyleType: "Christensen",
              imageFilePath: "tieKnotTypes/christensen-knot.jpg"),
    
    TypesTies(tieStyleType: "Eldredge",
              imageFilePath: "tieKnotTypes/eldredge-knot.jpg"),
    
    TypesTies(tieStyleType: "Four-in-Hand",
              imageFilePath: "tieKnotTypes/four-in-hand-knot.jpg"),
    
    TypesTies(tieStyleType: "Full Windsor",
              imageFilePath: "tieKnotTypes/full-windsor-knot-1.jpg"),
    
    TypesTies(tieStyleType: "Grantchester",
              imageFilePath: "tieKnotTypes/grantchester-knot.jpg"),
    
    TypesTies(tieStyleType: "Half Windsor",
              imageFilePath: "tieKnotTypes/half-windsor-knot.jpg"),
    
    TypesTies(tieStyleType: "Kelvin",
              imageFilePath: "tieKnotTypes/kelvin-knot.jpg"),
    
    TypesTies(tieStyleType: "Nicky",
              imageFilePath: "tieKnotTypes/nicky-knot.jpg"),
    
    TypesTies(tieStyleType: "Pratt",
              imageFilePath: "tieKnotTypes/pratt-knot.jpg"),
    
    TypesTies(tieStyleType: "Plattsburgh",
              imageFilePath: "tieKnotTypes/Plattsburgh-Knot-Tutorial-1.jpg"),
    
    TypesTies(tieStyleType: "Saint Andrew",
              imageFilePath: "tieKnotTypes/saint-andrew-knot.jpg"),
    
    TypesTies(tieStyleType: "Trinity",
              imageFilePath: "tieKnotTypes/trinity-knot.jpg"),
    
    TypesTies(tieStyleType: "Victoria",
              imageFilePath: "tieKnotTypes/victoria-knot.jpg"),
]

class TypesTies {
    var tieStyleType: String
    var imageFilePath: String
    
    init(tieStyleType: String, imageFilePath: String) {
        self.tieStyleType = tieStyleType
        self.imageFilePath = imageFilePath
    }
}
