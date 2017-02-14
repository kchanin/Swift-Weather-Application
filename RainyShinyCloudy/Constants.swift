//
//  Constants.swift
//  RainyShinyCloudy
//
//  Created by Ari Chanin on 2/12/17.
//  Copyright © 2017 kbob. All rights reserved.
//

import Foundation

//http://api.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=fc0821ae2158b29572536a49166f5d70

//http://api.openweathermap.org/data/2.5/forecast/daily?lat=32&lon=-81&units=imperial&cnt=7&appid=fc0821ae2158b29572536a49166f5d70

let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let BASE_FORECAST_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?"
let LATITUDE = "lat="
let LONGITUDE = "&lon="
let UNITS = "&units=imperial"
let COUNT = "&cnt=10"

let API_ID = "&appid="
let API_KEY = "fc0821ae2158b29572536a49166f5d70"

typealias DownloadComplete = () -> ()

//let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)31.9560956350839\(LONGITUDE)-81.1535577030375\(API_ID)\(API_KEY)"

//let FORECAST_WEATHER_URL = "\(BASE_FORECAST_URL)\(LATITUDE)31.9560956350839\(LONGITUDE)-81.1535577030375\(UNITS)\(COUNT)\(API_ID)\(API_KEY)"

let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)\(Location.sharedInstance.latitude!)\(LONGITUDE)\(Location.sharedInstance.longitude!)\(API_ID)\(API_KEY)"

let FORECAST_WEATHER_URL = "\(BASE_FORECAST_URL)\(LATITUDE)\(Location.sharedInstance.latitude!)\(LONGITUDE)\(Location.sharedInstance.longitude!)\(UNITS)\(COUNT)\(API_ID)\(API_KEY)"


