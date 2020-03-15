//
//  TieCollectionList.swift
//  TalukderR_FinalProject_CSC471
//
//  Created by Raquib Talukder on 3/15/20.
//  Copyright © 2020 DePaul University. All rights reserved.
//

import Foundation
import UIKit

import Foundation
import UIKit

let tieCollectionList = [
    TieCollectionList(filePath: "ties/tie1.jpg"),
    
    TieCollectionList(filePath: "ties/tie2.jpg"),
    
    TieCollectionList(filePath: "ties/tie3.jpg"),
    
    TieCollectionList(filePath: "ties/tie4.jpg"),
    
    TieCollectionList(filePath: "ties/tie5.jpg")
]

class TieCollectionList {
    var filePath: String
    
    init(filePath: String){
        self.filePath = filePath
    }
}
