//
//  Shirts.swift
//  TalukderR_FinalProject_CSC471
//
//  Created by Raquib Talukder on 3/13/20.
//  Copyright © 2020 DePaul University. All rights reserved.
//

import Foundation

class Shirt {
    
    enum `Type`: String {
        case red = "red"
        case white = "white"
        case rosé = "rose"
        case sparkling = "sparkling"
    }
    
    var name: String
    var type: Type
    var shortDescription: String
    var longDescription: String
    
    init(name: String, type: Type, shortDescription: String, longDescription: String) {
        self.name = name
        self.type = type
        self.shortDescription = shortDescription
        self.longDescription = longDescription
    }
    
}
