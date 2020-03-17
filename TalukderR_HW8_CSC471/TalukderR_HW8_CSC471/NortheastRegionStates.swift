//
//  NortheastRegion.swift
//  TalukderR_HW8_CSC471
//
//  Created by Raquib Talukder on 3/16/20.
//  Copyright © 2020 DePaul University. All rights reserved.
//

import Foundation

let northEastRegionStates = [
    NorthEastRegionStates(stateName: "Maine",
                          stateSubRegion: "New England",
                          stateCapital: "Augusta",
                          stateHoodDate: "March 15th, 1820",
                          stateImageFilePath: "states/maine.png"),
    NorthEastRegionStates(stateName: "New Hampshire",
                          stateSubRegion: "New England",
                          stateCapital: "Concord",
                          stateHoodDate: "June 21st, 1788",
                          stateImageFilePath: "states/newhampshire.png"),
    NorthEastRegionStates(stateName: "Vermont",
                          stateSubRegion: "New England",
                          stateCapital: "Montpelier",
                          stateHoodDate: "March 4th, 1791",
                          stateImageFilePath: "states/vermont.png"),
    NorthEastRegionStates(stateName: "Massachusetts",
                          stateSubRegion: "New England",
                          stateCapital: "Boston",
                          stateHoodDate: "February 6th, 1788",
                          stateImageFilePath: "states/massachusetts.png"),
    NorthEastRegionStates(stateName: "Rhode Island",
                          stateSubRegion: "New England",
                          stateCapital: "Providence",
                          stateHoodDate: "May 29th, 1790",
                          stateImageFilePath: "states/rhodeisland.png"),
    NorthEastRegionStates(stateName: "Connecticut",
                          stateSubRegion: "New England",
                          stateCapital: "Hartford",
                          stateHoodDate: "January 9th, 1788",
                          stateImageFilePath: "states/connecticut.png"),
    NorthEastRegionStates(stateName: "New York",
                          stateSubRegion: "Middle Atlantic",
                          stateCapital: "Albany",
                          stateHoodDate: "July 26th, 1788",
                          stateImageFilePath: "states/newyork.png"),
    NorthEastRegionStates(stateName: "Pennsylvania",
                          stateSubRegion: "Middle Atlantic",
                          stateCapital: "Harrisburg",
                          stateHoodDate: "December 12th, 1787",
                          stateImageFilePath: "states/pennslyvania.png"),
    NorthEastRegionStates(stateName: "New Jersey",
                          stateSubRegion: "Middle Atlantic",
                          stateCapital: "Trenton",
                          stateHoodDate: "December 18th, 1787",
                          stateImageFilePath: "states/newjersey.png")
]

class NorthEastRegionStates {
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
