//
//  TypesFabrics.swift
//  TalukderR_FinalProject_CSC471
//
//  Created by Raquib Talukder on 3/14/20.
//  Copyright © 2020 DePaul University. All rights reserved.
//

// Information about tie knot types taken from: https://propercloth.com/reference/dress-shirt-fabrics/

import Foundation
import UIKit

let fabricTypes = [
    TypesFabrics(fabricType: "Broadcloth",
                 fabricDescription: "Broadcloth—often referred to as poplin–is a tightly woven fabric with a very simple over-under weave and very little sheen, which makes it nice and professional. Broadcloths are great for guys looking for as little texture as possible in their fabrics. They are generally a thinner, lighter fabric. Particularly, white broadcloth fabrics can be slightly transparent. Broadcloths generally wear the smoothest out of all weaves thanks to their lack of texture, but can also be the most prone to wrinkling.",
                 imageFilePath: "fabricTypes/broadcloth.jpg"),
    
    TypesFabrics(fabricType: "Chambray",
                 fabricDescription: "Chambray is a plain weave fabric.  That means it has a similar construction to broadcloth, though it is generally made with heavier yarns for a more relaxed or workwear appeal. Generally there will be white threads running in the weft/width direction such that the fabric has an inconsistent color to it.  This could be compared to an end-on-end, though chambray is generally much heavier and more appropriate for casual wear than dress.",
                 imageFilePath: "fabricTypes/chambray.jpg"),
    
    TypesFabrics(fabricType: "Denim",
                 fabricDescription: "We all know denim as the fabric of our jeans.  But construction wise, denim is a twill fabric. A sturdy, possibly coarser twill often dyed with indigo.  For the most part though, when it comes to denim shirting, you’re mostly going to find much softer, lighter versions of the fabric than what your jeans are made of.  Denim shirting can come in many forms but generally have a different color on the inside than the outside.",
                 imageFilePath: "fabricTypes/denim.jpg"),
    
    TypesFabrics(fabricType: "Dobby",
                 fabricDescription: "Dobby (which is very similar to Jacquard, although technically different) can vary widely. Some versions are quite similar to broadcloth in terms of thickness and weight, while others can be thicker or woven to almost look like twill. Many dobby fabrics have stripes woven into them, although some are solid colors. The solid colors tend to have a faint stripe or dotted patterns woven in the same color as the base cloth.",
                 imageFilePath: "fabricTypes/dobby.jpg"),
    
    TypesFabrics(fabricType: "Egyptian Cotton",
                 fabricDescription: "When you hear about Egyptian, Sea Island, or American Pima cotton you should know that this is not referring to the type of weave, but to the type of cotton used to make the weave. For practical purposes, Pima cotton, Sea Island and Egyptian cotton are all cottons derived from originally the same plant: Gossypium Barbadense. These are more desirable cotton because they are typically “extra-long staple length” cottons (length greater than 1 3/8″), which allows them to be spun into finer, stronger yarns.",
                 imageFilePath: "fabricTypes/egyptianCotton.jpg"),
    
    TypesFabrics(fabricType: "End-on-End",
                 fabricDescription: "End-on-end broadcloths are a very popular type of dress shirt fabric with a distinct contrast coloring. Woven with colored thread in the warp and white thread in the weft, it looks like a true solid from a distance, but has more texture when seen from up close. Typically a lighter weight fabric, it’s a great choice for those living in warmer climates.",
                 imageFilePath: "fabricTypes/endOnEnd.jpg"),
    
    TypesFabrics(fabricType: "Flannel",
                 fabricDescription: "A fall/winter favorite. Flannels are warm, fuzzy fabrics that are most often brushed twill or brushed poplin fabrics. While they’re most regularly 100% cotton, they sometimes can come in cotton/wool, and even cotton/cashmere blends for added warmth. Usually made in thicker weaves, these are decidedly casual fabrics that are great for cold weather.",
                 imageFilePath: "fabricTypes/flannel.jpg"),
    
    TypesFabrics(fabricType: "Linen",
                 fabricDescription: "Linen fabrics are incredibly breathable and, like seersucker, typically made to be worn in hot climates. Linen is made from fiber of the flax plant, and can be very labor intensive to produce. Typically linen will be more loosely woven and sheer than most cotton shirts, and has a very unique dry hand to it that is unlike cotton. Linen also tends to wrinkle more easily than cotton and generally feels much more relaxed because of this. While we love the look and feel of linen, some people prefer cotton/linen blended shirts as you can achieve much of the coolness of a linen shirt while reducing the wrinkling.",
                 imageFilePath: "fabricTypes/linen.jpg"),
    
    TypesFabrics(fabricType: "Melange",
                 fabricDescription: "Melange fabrics can come in every sort of weave–poplin, twill, royal oxford, etc–and are woven using multi-colored yarns. Each yarn will be dyed this way, most often with 2-3 subtlety different hues.  These unique yarns can help achieve a heathered, intentionally inconsistent, somewhat organic look. Melange fabrics are different than Mouline fabrics, as Mouline fabrics are made from consistent, one-color yarns that are twisted together to achieve a multi-color look.",
                 imageFilePath: "fabricTypes/melange.jpg"),
    
    TypesFabrics(fabricType: "Oxford Cloth",
                 fabricDescription: "Oxford Cloth is very similar to pinpoint oxford, except it uses a slightly heavier thread and looser weave. It has a slightly rougher texture but is more durable than most fabrics. It’s composed of a symmetrical basketweave where one yarn may cross two yarns. Originally developed for sportswear, so it’s the least dressy, and (in some circles) not considered appropriate for office or formal wear. Oxford cloth has always been a staple in traditional American button down polo shirts. It can be worn slightly wrinkled straight from the dryer and still look great.",
                 imageFilePath: "fabricTypes/oxfordCloth.jpg"),
    
    TypesFabrics(fabricType: "Pinpoint Oxford",
                 fabricDescription: "Pinpoint (also referred to as pinpoint oxford) has the same weave as oxford cloth, although it uses a finer yarn and tighter weave. It is more formal than oxford cloth, but less formal than broadcloth or twill. Think of them as great everyday work shirts, but not necessarily the first recommendation for special events. Pinpoint fabrics are generally not transparent and are slightly heavier and thicker than broadcloths. Because of their heavier construction, pinpoints are fairly durable fabrics. Opt for a twill or broadcloth if you’re looking for a formal shirt.",
                 imageFilePath: "fabricTypes/pinpointOxford.jpg"),
    
    TypesFabrics(fabricType: "Poplin",
                 fabricDescription: "Poplin is so similar to Broadcloth that we decided not to distinguish between the two in our fabric descriptions.  For all practical purposes you can equate the two. They are both a plain weave fabric that is going to be quite thin, smooth and flat. That said, technically Poplin is different than Broadcloth in that Poplins can have different weight yarns in the warp and weft while broadcloths will have a a symmetrical construction.  For example, broadcloths could be 100/2×100/2 (meaning 100s two-ply in the warp and weft) while a poplin could be 100/2×60/1 (meaning 100s two-ply in the warp and 60s single-ply in the weft).",
                 imageFilePath: "fabricTypes/poplin.jpg"),
    
    TypesFabrics(fabricType: "Seersucker",
                 fabricDescription: "Seersucker is a fabric primarily used to make shirts for warm weather, and is known for its distinctive puckered appearance. This puckered look is created in the finishing of the fabric, after it’s woven, and helps to promote air flow while being worn. This helps make seersucker very comfortable in the summer. While seersucker fabrics can come in any color or pattern, blue striped seersucker is most popular.",
                 imageFilePath: "fabricTypes/seersucker.jpg"),
    
    TypesFabrics(fabricType: "Twill",
                 fabricDescription: "Twill fabrics are easily recognizable because they will show diagonal weave or texture. The diagonal effect can range from very fine, subtle twills to much larger Imperial or Cavalry twills. Twills will almost always have a bit of shine, though the degree can depend on the weave, color, and cotton used. Twill is an extremely tight weave,  that can come in extremely high thread counts, some of which might be mistaken for silk. Because of the diagonal texture twill is a bit softer than broadcloth and will drape more easily. Twill won’t give you the same “crisp” look that freshly pressed broadcloth can, but it’s relatively easy to iron and resistant to wrinkles.",
                 imageFilePath: "fabricTypes/twill.jpg")
]

class TypesFabrics {
    var fabricType: String
    var fabricDescription: String
    var imageFilePath: String
    
    init(fabricType: String, fabricDescription: String, imageFilePath: String) {
        self.fabricType = fabricType
        self.fabricDescription = fabricDescription
        self.imageFilePath = imageFilePath
    }
}
