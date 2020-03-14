//
//  CollarTypes.swift
//  TalukderR_FinalProject_CSC471
//
//  Created by Raquib Talukder on 3/13/20.
//  Copyright © 2020 DePaul University. All rights reserved.
//
// Information about collar types was taken from: https://www.lanieri.com/blog/en/custom-dress-shirt-guide-collar-styles/

import Foundation
import UIKit

//struct GlobalShirtObjectList {
//    static var shirtObjectList: [Shirt] = []
//}

let collarTypes = [
    TypesCollars(description: "Band",
                 inDepthDescription: "Inspired by the traditional lines of the Far East (Korea or mandarin), the band collar has a very particular and characteristic shape: practically without collar point length, it consists of a single “band” about 3 cm high, to button on the front. \nThe shirt design is very minimal, suitable for an outfit for a special evening or your weekend, with or without a jacket. Obviously, in the case of the band collar, wearing a tie is impossible.",
                 suitableTies: "None.",
                 cuffsToPair: "With a collar style so essential and original, the best choice is to combine it with the round cuffs that resembles the shape of the collar.",
                 imageFilePath: "collarTypes/band-collar.jpg"),
    
    TypesCollars(description: "Club",
                 inDepthDescription: "Very much in vogue in the 1920s, the Club collar was born as a distinguishing feature for the uniforms of an English school looking for a way to differentiate its students and it is characterised by its rounded tips, hence the alternative name “round collar”. \nIn short, an elite group of people wore it (this is the reason for the name Club), synonymous with refined exclusiveness, but at the same time capable of being surprisingly versatile. This shirt collar suitable for men with a long, rather than round face.",
                 suitableTies: "Given its characteristics, the club collar goes perfectly with sleek knots and thin ties, like the small knot or the simple knot; or the collar is worn open, for a more casual style.",
                 cuffsToPair: "Round matches with round; that being said the suggestion is to match the *rounded cuff * to the club collar.",
                 imageFilePath: "collarTypes/club-collar.jpg"),
    
    TypesCollars(description: "Cutaway",
                 inDepthDescription: "Among all the collars, the cutaway collar is the one with the most reduced collar point length, the tips are shorter and more open, well spaced out and almost a little outstretched. \nDefined as synonymous with a contemporary sophistication, its extreme width leaves visible a part of the band of the collar under the tie, which makes not best for formal and strictly formal working contexts.",
                 suitableTies: "The cutaway collar is designed to be combined with large knots, its sharp, horizontal and wideband helps to soften and balance the contours of the hardest faces. \nThe Windsor knot and its variants are perfect and ideal, but also less known but fancier knots, like the Balthus knot, the Eldredge and Trinity knots are to be preferred with this kind of collar as their look is enhanced by the spacious shape of this collar.",
                 cuffsToPair: "Given its wide cut, to be completed with an important tie knot, the most suitable cuff to combine with the cutaway collar is the straight cuff.",
                 imageFilePath: "collarTypes/cutaway-collar.jpg"),
    
    TypesCollars(description: "Long Button Down",
                 inDepthDescription: "Less formal than previously discussed collars, the button-down collar was created and circulated by the American brand Brooks Brothers in the mid-fifties. \nAs already known, its main feature is the collar buttoned directly on the shirt thanks to the two buttonholes on the collar tips. \nOriginally used only for sportswear shirts, it is now an expression of a more casual look, but also suitable for young or informal business looks.",
                 suitableTies: "Given its casual and sporty look, the long button-down collar is to be worn especially in leisure time, without a tie, open and combined with a jacket with a sporty cut like the blazer. \nDespite this, there are those who now exploit it by wearing a tie; in that case, we recommend an undemanding knot, like the small knot.",
                 cuffsToPair: "Given the casual and sporty look of this collar, the most suitable cuff is the angled cuff.",
                 imageFilePath: "collarTypes/long-button-down-collar.jpg"),
    
    TypesCollars(description: "Semi Spread",
                 inDepthDescription: "The semi-spread collar is a collar with a classic look, it is less upright/stiff than the straight point collar. However, it is similar to the straight point collar but it has a less width between the slightly larger tips and a slightly shorter collar point length. \nGiven its characteristics, the semi-spread collar is the best choice for the tall people, with the long necks; it is also perfect for all those who simply like to wear a tie: suitable for almost any type of knot.",
                 suitableTies: "The semi-spread collar is designed to be combined best with the medium and large knots: so you can indulge with the various different knots Windsor, half Windsor; or alternatively it can also be used with less bulky and lighter knots, such as the simple or double knot.",
                 cuffsToPair: "Like the straight point collar, also for the semi-spread collar, the ideal cuffs are the angled cuff or the rounded cuff.",
                 imageFilePath: "collarTypes/semi-spread-collar.jpg"),
    
    TypesCollars(description: "Short Button Down",
                 inDepthDescription: "Thanks to its reduced length compared to the previously mentioned version, the short button-down collar has a particularly casual and youthful appearance compared to the more longer option. \nThis is a medium-sized collar, a perfect combination of a modern line and a classic chic, try it with an oxford shirt.",
                 suitableTies: "As for the tie knot, the same rules are suggested as the long button down version is even more casual.",
                 cuffsToPair: "The same things to be considered as the long button-down, even for the short version the most suitable cuff is the angled cuff, sporty and casual at the right angles.",
                 imageFilePath: "collarTypes/short-button-down-collar.jpg"),
    
    TypesCollars(description: "Spread",
                 inDepthDescription: "If you are not looking for something very particularly formal, but you are searching for something with a modern and elegant design, the spread collar is a great choice. \nSimilar to the cutaway collar, the spread collar has a structure that put in harmony most of the tie knot proportions. Not too big or too narrow, and with its tips spaced right and proportioned point length, is the balanced middle way, able to satisfy every need. \nIts balanced style and “universal” shape make it very suitable for men with elongated and narrow oval faces.",
                 suitableTies: "The spread collar combines well with most of the tie knots, although its shape makes it more suitable for the medium-large knots already mentioned above. \nThe ideal combination could be the half-Windsor knot, perfect for the shape of this collar.",
                 cuffsToPair: "For a spread collar the straight cuff can be perfect, but even a rounded cuff can be combined without having to think too much.",
                 imageFilePath: "collarTypes/spread-collar.jpg"),
    
    TypesCollars(description: "Straight Point",
                 inDepthDescription: "Perhaps the most classic of all, the straight point collar is the narrowest and most traditional among other the collars and has been the favorite choice for men since they have started wearing a suit and tie. \nThis type of collar is characterised by elongated collar point length and closer tips compared to the other types. \nIts tips are narrow and elongated which also gives a visually slimming *effect * that makes the straight point collar particularly suitable for round faces and shorter necks.",
                 suitableTies: "Versatile, but always leaves a formal impression, the straight point collar is perfect when paired with small and medium tie knots. \nThe simple knot and the double knot are both perfect with such a collar as they balance the style of straight point collar. The small knot is also something that can be considered with this kind of collar.",
                 cuffsToPair: "Given that straight point collar is classified as formal, the most suitable cuffs to match with this type of collar are the angled cuff is also known as the mitered cuff, or the round cuff.",
                 imageFilePath: "collarTypes/straight-point-collar.jpg"),
    
    TypesCollars(description: "Wingtip",
                 inDepthDescription: "It is the most formal type of collar, by definition “the collar of the shirt for the bow tie“. A unique design detail, characterised by very small point length and placed only on the front. \nOnce the businessman’s everyday shirt collar, today the wing collar is just worn during the exceptional ceremonies such as white or black tie events, mostly with morning dress, tuxedo or tailcoat.",
                 suitableTies: "In the case of the wing tip collar, the accessory that fits perfectly is obviously the bow tie, best compliments the collar if it is in silk, to be knotted or should be purchased already knotted. No tie as the tuxedo collar necessarily requires the bow tie.",
                 cuffsToPair: "This is the most formal collar, therefore the formal cuffs par excellence are needed. The french cuffs are mandatory, both in the double french and in the round french paired with the cufflinks.",
                 imageFilePath: "collarTypes/wingtip-collar.jpg")
]

class TypesCollars {
    var description: String
    var inDepthDescription: String
    var suitableTies: String
    var cuffsToPair: String
    var imageFilePath: String
    
    init(description: String, inDepthDescription: String, suitableTies: String, cuffsToPair: String, imageFilePath: String) {
        self.description = description
        self.inDepthDescription = inDepthDescription
        self.suitableTies = suitableTies
        self.cuffsToPair = cuffsToPair
        self.imageFilePath = imageFilePath
    }
}
