//
//  ContentView.swift
//  weather_app
//
//  Created by Rodrigo Silva on 22/06/24.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @ObservedObject var weatherViewModel = CurrentWeatherViewModel()
    @StateObject private var locationViewModel = LocationViewModel()
    @State private var coordinate = CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194) // Default coordinate
    
    var body: some View {
        ScrollView{
            VStack {
                if let location = locationViewModel.currentLocation {
                    Text("Latitude: \(location.coordinate.latitude)")
                    Text("Longitude: \(location.coordinate.longitude)")
                    Button("Fetch Weather") {
                        Task {
                            await weatherViewModel.fetchWeather(
                                forLatitude: location.coordinate.latitude,
                                longitude: location.coordinate.longitude)
                        }
                    }
                    MapView(coordinate: $coordinate)
                        .frame( height: 300)
                        .cornerRadius(10)
                        .padding()
                } else {
                    Text("Fetching location...")
                }
                
                if let weather = weatherViewModel.currentWeather {
                    Text("Weather in \(weather.name ?? "")")
                        .font(.largeTitle)
                        .padding()
                    
                    Text("Temperature: \(weather.main?.temp ??  0.0, specifier: "%.1f")°C")
                    Text("Humidity: \(weather.main?.humidity ?? 0)%")
                    Text("Description: \(weather.weather?.first?.description ?? "")")
                    
                    if let weatherConditions = weather.weather {
                        List(weatherConditions) { condition in
                            Text("Condition: \(condition.description)")
                        }
                    }
                }
            }
            .padding()
        }
        .onAppear {
            if let location = locationViewModel.currentLocation {
                coordinate = location.coordinate
            }
        }
        
    }
}
