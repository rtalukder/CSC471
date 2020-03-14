//
//  CollarTypes.swift
//  TalukderR_FinalProject_CSC471
//
//  Created by Raquib Talukder on 3/13/20.
//  Copyright © 2020 DePaul University. All rights reserved.
//

import Foundation
import UIKit

//struct GlobalShirtObjectList {
//    static var shirtObjectList: [Shirt] = []
//}

let collarTypes = [
    TypesCollars(description: "Band",
                 suitableTies: "",
                 cuffsToPair: "",
                 imageFilePath: ""),
    
    TypesCollars(description: "Club",
                 suitableTies: "",
                 cuffsToPair: "",
                 imageFilePath: ""),
    
    TypesCollars(description: "Cutaway",
                 suitableTies: "",
                 cuffsToPair: "",
                 imageFilePath: ""),
    
    TypesCollars(description: "Long Button Down",
                 suitableTies: "",
                 cuffsToPair: "",
                 imageFilePath: ""),
    
    TypesCollars(description: "Semi Spread",
                 suitableTies: "",
                 cuffsToPair: "",
                 imageFilePath: ""),
    
    TypesCollars(description: "Short Button Down",
                 suitableTies: "",
                 cuffsToPair: "",
                 imageFilePath: ""),
    
    TypesCollars(description: "Spread",
                 suitableTies: "",
                 cuffsToPair: "",
                 imageFilePath: ""),
    
    TypesCollars(description: "Straight Point",
                 suitableTies: "",
                 cuffsToPair: "",
                 imageFilePath: ""),
    
    TypesCollars(description: "Wingtip",
                 suitableTies: "",
                 cuffsToPair: "",
                 imageFilePath: "")
]

class TypesCollars {
    var description: String
    var suitableTies: String
    var cuffsToPair: String
    var imageFilePath: String
    
    init(description: String, suitableTies: String, cuffsToPair: String, imageFilePath: String) {
        self.description = description
        self.suitableTies = suitableTies
        self.cuffsToPair = cuffsToPair
        self.imageFilePath = imageFilePath
    }
}
