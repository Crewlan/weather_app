//
//  WeatherResponseModel.swift
//  weather_app
//
//  Created by Rodrigo Silva on 22/06/24.
//

import Foundation

struct WeatherResponseModel: Codable, Identifiable {
    let id: Int
    let main: String
    let description: String
    let icon: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case main
        case description
        case icon
    }
}
