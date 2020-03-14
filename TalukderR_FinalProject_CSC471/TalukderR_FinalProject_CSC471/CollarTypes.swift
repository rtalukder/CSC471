//
//  CollarTypes.swift
//  TalukderR_FinalProject_CSC471
//
//  Created by Raquib Talukder on 3/13/20.
//  Copyright © 2020 DePaul University. All rights reserved.
//

import Foundation

let wines = [
    CollarTypes(name: "Barbera",
        type: .red,
        shortDescription: "Full-bodied Italian Red",
        longDescription: "Barbera is a red wine grape found primarily in Italy's Piedmont region. It produces hearty red wines with deep ruby colors, full body and low tannin levels."),
    
//    Wine(name: "Cabernet Sauvignon",
//        type: .red,
//        shortDescription: "Full-bodied, intense Red",
//        longDescription: "Cabernet Sauvignon is a red wine known for its depth of flavor, aroma and ability to age (present by the wine’s noticeable tannins). It is full-bodied and intense, with cherry-currant and sometimes herbal flavors."),
//
//    Wine(name: "Champagne",
//        type: .sparkling,
//        shortDescription: "Sparkling White from Champagne region",
//        longDescription: "These wines are made effervescent by a secondary fermentation in the wine-making process. Champagnes and sparkling wines range in style from very dry (Natural), dry (brut) and slightly sweet (extra Dry) to sweet (sec and Demi-Sec). Many sparkling wines are also identified as Blanc de Blancs (wines made from white grapes) or Blanc de Noirs (wines produced from red grapes)."),
//
//    Wine(name: "Chardonnay",
//        type: .white,
//        shortDescription: "Popular, complex White from Burgundy",
//        longDescription: "One of the world’s most popular wines, Chardonnay is a white wine originating from Burgundy.  Flavors range from clean and crisp with a hint of varietal flavor to rich and complex, vanilla, butter and oak-aged wines. Chardonnay typically balances fruit, acidity and texture."),
]

class CollarTypes {
    
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
