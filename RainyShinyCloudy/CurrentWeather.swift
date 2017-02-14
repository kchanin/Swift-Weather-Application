//
//  CurrentWeather.swift
//  RainyShinyCloudy
//
//  Created by Ari Chanin on 2/12/17.
//  Copyright © 2017 kbob. All rights reserved.
//

import UIKit
import Alamofire

class CurrentWeather{
    
    var _cityName: String!
    var _date: String!
    var _weatherType: String!
    var _currentTemp: Int!
    
    var cityName: String{
        if _cityName == nil{
            _cityName = ""
        }
        return _cityName
    }
    
    var weatherType: String{
        if _weatherType == nil{
            _weatherType = ""
        }
        return _weatherType
    }
    
    var currentTemp: Int{
        if _currentTemp == nil{
            _currentTemp = 0
        }
        return _currentTemp
    }
    
    var date: String{
        if _date == nil{
            _date = ""
        }
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .none
        
        let currentDate = dateFormatter.string(from: Date())
        self._date = "Today, \(currentDate)"
        return _date
    }

    func downloadWeatherDetails(completed: @escaping DownloadComplete){
        
        let currentWeatherURL = URL(string: CURRENT_WEATHER_URL)!
        
        Alamofire.request(currentWeatherURL).responseJSON{ response in
            let result = response.result
            print (result)
            
            if let dict = result.value as? Dictionary<String, AnyObject>{
                
                if let name = dict["name"] as? String{
                    self._cityName = name.capitalized
                }
                
                if let weather = dict["weather"] as? [Dictionary<String, AnyObject>]{
                    if let main = weather[0]["main"] as? String{
                        self._weatherType = main.capitalized
                    }
                }
                
                if let main = dict["main"] as? Dictionary<String, AnyObject>{
                    if let currentTemp = main["temp"] as? Double{
                        let kelvinToFahrenheit =  (round(Double(round(1.8 * (currentTemp - 273)) + 32)))
                        self._currentTemp = Int(kelvinToFahrenheit)
                    }
                }
            }
            
            
            print (self._cityName)
            print (self._weatherType)
            print (self._currentTemp)
            completed()
        }
        
    }
    
    
    
    
    
    
    
}


    
    
    
    
    

