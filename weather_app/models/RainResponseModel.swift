//
//  RainResponseModel.swift
//  weather_app
//
//  Created by Rodrigo Silva on 22/06/24.
//

import Foundation

struct RainResponseModel: Codable {
    let oneHour: Double?
    
    enum CodingKeys: String, CodingKey {
        case oneHour = "1h"
    }
}


