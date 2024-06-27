//
//  WindResponseModel.swift
//  weather_app
//
//  Created by Rodrigo Silva on 22/06/24.
//

import Foundation

struct WindResponseModel: Codable {
    let speed: Double
    let deg: Int
    let gust: Double?
}
