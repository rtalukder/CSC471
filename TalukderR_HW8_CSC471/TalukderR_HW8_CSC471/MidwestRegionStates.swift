//
//  MidwestRegion.swift
//  TalukderR_HW8_CSC471
//
//  Created by Raquib Talukder on 3/16/20.
//  Copyright © 2020 DePaul University. All rights reserved.
//

import Foundation

let midWestRegionStates = [
    MidwestRegionStates(stateName: "Wisconsin",
                          stateSubRegion: "East North Central",
                          stateCapital: "Madison",
                          stateHoodDate: "May 29th, 1848",
                          stateImageFilePath: "states/wisconsin.png"),
    MidwestRegionStates(stateName: "Michigan",
                          stateSubRegion: "East North Central",
                          stateCapital: "Lansing",
                          stateHoodDate: "January 26th, 1837",
                          stateImageFilePath: "states/michigan.png"),
    MidwestRegionStates(stateName: "Illinois",
                          stateSubRegion: "East North Central",
                          stateCapital: "Springfield",
                          stateHoodDate: "December 3rd, 1818",
                          stateImageFilePath: "states/illinois.png"),
    MidwestRegionStates(stateName: "Indiana",
                          stateSubRegion: "East North Central",
                          stateCapital: "Indianapolis",
                          stateHoodDate: "December 11th, 1816",
                          stateImageFilePath: "states/indiana.png"),
    MidwestRegionStates(stateName: "Ohio",
                          stateSubRegion: "East North Central",
                          stateCapital: "Columbus",
                          stateHoodDate: "March 1st, 1803",
                          stateImageFilePath: "states/ohio.png"),
    MidwestRegionStates(stateName: "North Dakota",
                          stateSubRegion: "West North Central",
                          stateCapital: "Bismark",
                          stateHoodDate: "November 2nd, 1889",
                          stateImageFilePath: "states/northdakota.png"),
    MidwestRegionStates(stateName: "South Dakota",
                          stateSubRegion: "West North Central",
                          stateCapital: "Pierre",
                          stateHoodDate: "November 2nd, 1889",
                          stateImageFilePath: "states/southdakota.png"),
    MidwestRegionStates(stateName: "Nebraska",
                          stateSubRegion: "West North Central",
                          stateCapital: "Lincoln",
                          stateHoodDate: "March 1st, 1867",
                          stateImageFilePath: "states/nebraska.png"),
    MidwestRegionStates(stateName: "Kansas",
                          stateSubRegion: "West North Central",
                          stateCapital: "Topeka",
                          stateHoodDate: "January 29th, 1861",
                          stateImageFilePath: "states/kansas.png"),
    MidwestRegionStates(stateName: "Minnesota",
                          stateSubRegion: "West North Central",
                          stateCapital: "St. Paul",
                          stateHoodDate: "May 11th, 1856",
                          stateImageFilePath: "states/minnesota.png"),
    MidwestRegionStates(stateName: "Iowa",
                          stateSubRegion: "West North Central",
                          stateCapital: "Des Moines",
                          stateHoodDate: "December 28th, 1846",
                          stateImageFilePath: "states/iowa.png"),
    MidwestRegionStates(stateName: "Missouri",
                          stateSubRegion: "West North Central",
                          stateCapital: "Jefferson City",
                          stateHoodDate: "August 10th, 1821",
                          stateImageFilePath: "states/missouri.png")
]

class MidwestRegionStates {
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
