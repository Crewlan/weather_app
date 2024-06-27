//
//  SysResponseModel.swift
//  weather_app
//
//  Created by Rodrigo Silva on 22/06/24.
//

import Foundation

struct SysResponseModel: Codable {
    let type: Int?
    let id: Int?
    let country: String?
    let sunrise: Int?
}
