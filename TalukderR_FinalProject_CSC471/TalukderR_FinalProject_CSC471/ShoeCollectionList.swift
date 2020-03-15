//
//  ShoeCollectionList.swift
//  TalukderR_FinalProject_CSC471
//
//  Created by Raquib Talukder on 3/15/20.
//  Copyright © 2020 DePaul University. All rights reserved.
//

import Foundation
import UIKit

let shoeCollectionList = [
    ShoeCollectionList(filePath: "shoes/shoe1.jpg"),
    
    ShoeCollectionList(filePath: "shoes/shoe2.jpg"),
    
    ShoeCollectionList(filePath: "shoes/shoe3.jpg"),
    
    ShoeCollectionList(filePath: "shoes/shoe4.jpg"),
    
    ShoeCollectionList(filePath: "shoes/shoe5.jpg"),
    
    ShoeCollectionList(filePath: "shoes/shoe6.jpg")
]

class ShoeCollectionList {
    var filePath: String
    
    init(filePath: String){
        self.filePath = filePath
    }
}
