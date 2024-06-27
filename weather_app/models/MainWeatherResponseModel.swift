//
//  MainWeatherResponseModel.swift
//  weather_app
//
//  Created by Rodrigo Silva on 22/06/24.
//

import Foundation

struct MainWeatherResponseModel :Codable {
    let temp : Double
    let feelsLike : Double
    let tempMin : Double
    let tempMax : Double
    let pressure : Int
    let humidity : Int
    let seaLevel : Int?
    let grndLevel : Int?
    
    enum CodingKeys:String, CodingKey {
        case temp = "temp"
        case feelsLike = "feels_like"
        case tempMin = "temp_min"
        case tempMax = "temp_max"
        case pressure = "pressure"
        case humidity = "humidity"
        case seaLevel = "sea_level"
        case grndLevel = "grnd_level"
    }
}
