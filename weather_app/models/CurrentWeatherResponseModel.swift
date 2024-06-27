//
//  CurrentWeatherResponseModel.swift
//  weather_app
//
//  Created by Rodrigo Silva on 22/06/24.
//

import Foundation

struct CurrentWeatherResponseModel : Codable, Identifiable {
    let name : String?
    let main : MainWeatherResponseModel?
    let weather : [WeatherResponseModel]?
    let dt : Int?
    let sys : SysResponseModel?
    let timezone : Int?
    let id : Int?
    let coord : CoordResponseModel?
    let wind: WindResponseModel?
    let rain : RainResponseModel?
    let clouds : CloudsResponseModel?
    
    enum CodingKeys:String , CodingKey {
        case name = "name"
        case main = "main"
        case weather = "weather"
        case dt = "dt"
        case sys = "sys"
        case timezone = "timezone"
        case id = "id"
        case coord = "coord"
        case wind = "wind"
        case rain = "rain"
        case clouds = "clouds"
    }
    
}


