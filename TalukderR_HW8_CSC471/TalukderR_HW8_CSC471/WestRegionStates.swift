//
//  WestREgion.swift
//  TalukderR_HW8_CSC471
//
//  Created by Raquib Talukder on 3/16/20.
//  Copyright © 2020 DePaul University. All rights reserved.
//

import Foundation

let westRegionStates = [
    WestRegionStates(stateName: "Idaho",
                          stateSubRegion: "Mountain",
                          stateCapital: "Boise",
                          stateHoodDate: "July 3rd, 1890",
                          stateImageFilePath: "states/idaho.png"),
    WestRegionStates(stateName: "Montana",
                          stateSubRegion: "Mountain",
                          stateCapital: "Helena",
                          stateHoodDate: "November 8th, 1889",
                          stateImageFilePath: "states/montana.png"),
    WestRegionStates(stateName: "Wyoming",
                          stateSubRegion: "Mountain",
                          stateCapital: "Cheyenne",
                          stateHoodDate: "July 10th, 1890",
                          stateImageFilePath: "states/wyoming.png"),
    WestRegionStates(stateName: "Nevada",
                          stateSubRegion: "Mountain",
                          stateCapital: "Carson City",
                          stateHoodDate: "October 31st, 1864",
                          stateImageFilePath: "states/nevada.png"),
    WestRegionStates(stateName: "Utah",
                          stateSubRegion: "Mountain",
                          stateCapital: "Salt Lake City",
                          stateHoodDate: "January 4th, 1896",
                          stateImageFilePath: "states/utah.png"),
    WestRegionStates(stateName: "Colorado",
                          stateSubRegion: "Mountain",
                          stateCapital: "Denver",
                          stateHoodDate: "August 1st, 1876",
                          stateImageFilePath: "states/colorado.png"),
    WestRegionStates(stateName: "Arizona",
                          stateSubRegion: "Mountain",
                          stateCapital: "Phoenix",
                          stateHoodDate: "February 14th, 1912",
                          stateImageFilePath: "states/arizona.png"),
    WestRegionStates(stateName: "New Mexico",
                          stateSubRegion: "Mountain",
                          stateCapital: "Santa Fe",
                          stateHoodDate: "January 6th, 1912",
                          stateImageFilePath: "states/newmexico.png"),
    WestRegionStates(stateName: "Alaska",
                          stateSubRegion: "Pacific",
                          stateCapital: "Juneau",
                          stateHoodDate: "January 3rd, 1959",
                          stateImageFilePath: "states/alaska.png"),
    WestRegionStates(stateName: "Washington",
                          stateSubRegion: "Pacific",
                          stateCapital: "Olympia",
                          stateHoodDate: "November 11th, 1889",
                          stateImageFilePath: "states/washington.png"),
    WestRegionStates(stateName: "Oregon",
                          stateSubRegion: "Pacific",
                          stateCapital: "Salem",
                          stateHoodDate: "February 14th, 1859",
                          stateImageFilePath: "states/oregon.png"),
    WestRegionStates(stateName: "California",
                          stateSubRegion: "Pacific",
                          stateCapital: "Sacramento",
                          stateHoodDate: "September 9th, 1850",
                          stateImageFilePath: "states/california.png"),
    WestRegionStates(stateName: "Hawaii",
                          stateSubRegion: "Pacific",
                          stateCapital: "Honolulu",
                          stateHoodDate: "August 21st, 1959",
                          stateImageFilePath: "states/hawaii.png")
]

class WestRegionStates {
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
