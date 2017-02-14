//
//  WeatherCell.swift
//  RainyShinyCloudy
//
//  Created by Ari Chanin on 2/13/17.
//  Copyright © 2017 kbob. All rights reserved.
//

import UIKit

class WeatherCell: UITableViewCell {

    @IBOutlet weak var weatherIcon: UIImageView!
    @IBOutlet weak var dayLbl: UILabel!
    @IBOutlet weak var weatherLbl: UILabel!
    @IBOutlet weak var highTempLbl: UILabel!
    @IBOutlet weak var lowTempLbl: UILabel!
    
    
    func configureCell(forecast: Forecast){
        lowTempLbl.text = forecast.lowTemp + "°"
        highTempLbl.text = forecast.highTemp + "°"
        weatherLbl.text = forecast.weatherType
        dayLbl.text = forecast.date
        weatherIcon.image = UIImage(named: forecast.weatherType)
    }
}
