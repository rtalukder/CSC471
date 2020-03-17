//
//  SouthRegion.swift
//  TalukderR_HW8_CSC471
//
//  Created by Raquib Talukder on 3/16/20.
//  Copyright © 2020 DePaul University. All rights reserved.
//

import Foundation

let southRegionStates = [
    SouthRegionStates(stateName: "Delaware",
                          stateSubRegion: "South Atlantic",
                          stateCapital: "Dover",
                          stateHoodDate: "December 7th, 1787",
                          stateImageFilePath: "states/delaware.png"),
    SouthRegionStates(stateName: "Maryland",
                          stateSubRegion: "South Atlantic",
                          stateCapital: "Annapolis",
                          stateHoodDate: "April 28th, 1788",
                          stateImageFilePath: "states/maryland.png"),
    SouthRegionStates(stateName: "District of Colombia",
                          stateSubRegion: "South Atlantic",
                          stateCapital: "Washington D.C.",
                          stateHoodDate: "N/A",
                          stateImageFilePath: "states/dc.png"),
    SouthRegionStates(stateName: "Virginia",
                          stateSubRegion: "South Atlantic",
                          stateCapital: "Richmond",
                          stateHoodDate: "June 25th, 1788",
                          stateImageFilePath: "states/virginia.png"),
    SouthRegionStates(stateName: "West Virginia",
                          stateSubRegion: "South Atlantic",
                          stateCapital: "Charleston",
                          stateHoodDate: "June 20th, 1863",
                          stateImageFilePath: "states/westvirginia.png"),
    SouthRegionStates(stateName: "North Carolina",
                          stateSubRegion: "South Atlantic",
                          stateCapital: "Raleigh",
                          stateHoodDate: "November 21st, 1789",
                          stateImageFilePath: "states/northcarolina.png"),
    SouthRegionStates(stateName: "South Carolina",
                          stateSubRegion: "South Atlantic",
                          stateCapital: "Columbia",
                          stateHoodDate: "May 23rd, 1788",
                          stateImageFilePath: "states/southcarolina.png"),
    SouthRegionStates(stateName: "Georgia",
                          stateSubRegion: "South Atlantic",
                          stateCapital: "Atlanta",
                          stateHoodDate: "January 2nd, 1788",
                          stateImageFilePath: "states/georgia.png"),
    SouthRegionStates(stateName: "Florida",
                          stateSubRegion: "South Atlantic",
                          stateCapital: "Tallahassee",
                          stateHoodDate: "March 3rd, 1845",
                          stateImageFilePath: "states/florida.png"),
    SouthRegionStates(stateName: "Kentucky",
                          stateSubRegion: "East South Central",
                          stateCapital: "Frankfort",
                          stateHoodDate: "June 1st, 1792",
                          stateImageFilePath: "states/kentucky.png"),
    SouthRegionStates(stateName: "Tennessee",
                          stateSubRegion: "East South Central",
                          stateCapital: "Nashville",
                          stateHoodDate: "June 1st, 1796",
                          stateImageFilePath: "states/tennessee.png"),
    SouthRegionStates(stateName: "Mississippi",
                          stateSubRegion: "East South Central",
                          stateCapital: "Jackson",
                          stateHoodDate: "December 10th, 1817",
                          stateImageFilePath: "states/mississippi.png"),
    SouthRegionStates(stateName: "Alabama",
                          stateSubRegion: "East South Central",
                          stateCapital: "Montgomery",
                          stateHoodDate: "December 14th, 1819",
                          stateImageFilePath: "states/alabama.png"),
    SouthRegionStates(stateName: "Oklahoma",
                          stateSubRegion: "West South Central",
                          stateCapital: "Oklahoma City",
                          stateHoodDate: "November 16th, 1907",
                          stateImageFilePath: "states/oklahoma.png"),
    SouthRegionStates(stateName: "Texas",
                          stateSubRegion: "West South Central",
                          stateCapital: "Austin",
                          stateHoodDate: "December 29th, 1845",
                          stateImageFilePath: "states/texas.png"),
    SouthRegionStates(stateName: "Arkansas",
                          stateSubRegion: "West South Central",
                          stateCapital: "Little Rock",
                          stateHoodDate: "June 15th, 1836",
                          stateImageFilePath: "states/arkansas.png"),
    SouthRegionStates(stateName: "Louisiana",
                          stateSubRegion: "West South Central",
                          stateCapital: "Baton Rouge",
                          stateHoodDate: "April 30th, 1812",
                          stateImageFilePath: "states/louisana.png")
]

class SouthRegionStates {
    var stateName: String
    var stateSubRegion: String
    var stateCapital: String
    var stateHoodDate: String
    var stateImageFilePath: String
    
    init(stateName: String, stateSubRegion: String, stateCapital: String, stateHoodDate:String, stateImageFilePath: String){
        self.stateName = stateName
        self.stateSubRegion = stateSubRegion
        self.stateCapital = stateCapital
        self.stateHoodDate = stateHoodDate
        self.stateImageFilePath = stateImageFilePath
    }
}
