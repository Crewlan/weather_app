//
//  CloudsResponseModel.swift
//  weather_app
//
//  Created by Rodrigo Silva on 22/06/24.
//

import Foundation

struct CloudsResponseModel: Codable {
    let all: Int
    
    enum CodingKeys: String, CodingKey {
        case all
    }
}
