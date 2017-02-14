//
//  Location.swift
//  RainyShinyCloudy
//
//  Created by Ari Chanin on 2/13/17.
//  Copyright © 2017 kbob. All rights reserved.
//

import CoreLocation

class Location{
    static var sharedInstance = Location()
    private init(){}
    
    var latitude: Double!
    var longitude: Double!
    
}
