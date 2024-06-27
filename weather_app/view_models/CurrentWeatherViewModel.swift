//
//  CurrentWeatherViewModel.swift
//  weather_app
//
//  Created by Rodrigo Silva on 23/06/24.
//

import Foundation
import Alamofire

class CurrentWeatherViewModel :ObservableObject {
    @Published var currentWeather: CurrentWeatherResponseModel?
    
    private let apiKey = "1bb58ed24daff4c967d787cc00ed3561"
    private let baseURL = "http://api.openweathermap.org/data/2.5/weather"
    
    
    func fetchWeather(forLatitude latitude: Double, longitude: Double) async {
        print("lat: \(latitude), long \(longitude)")
        let url = "\(baseURL)?lat=\(latitude)&lon=\(longitude)&appid=\(apiKey)&units=metric"
        
        AF.request(url, method: .get) .validate()
            .responseDecodable(of: CurrentWeatherResponseModel.self) { response in
                switch response.result {
                case .success(let weather):
                    DispatchQueue.main.async {
                        self.currentWeather = weather
                    }
                case .failure(let error):
                    print("Error fetching weather data: \(error)")
                }
            }
    }
}
