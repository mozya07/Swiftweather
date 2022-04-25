//
//  openweathermap.swift
//  tennki
//
//  Created by cmStudent on 2022/01/11.
//

import SwiftUI
import Foundation


struct Temperatures: Codable {
   let coord: Coord
   let weather: [Weather]
   let base: String
   let main: Main
   let visibility: Int
   let wind: Wind
   let clouds: Clouds
   let dt: Int
   let sys: Sys
   let timezone, id: Int
   let name: String
   let cod: Int
}


struct Clouds: Codable {
   let all: Int
}


struct Coord: Codable {
   let lon, lat: Double
}


struct Main: Codable {
   let temp, feelsLike, tempMin, tempMax: Double
   let pressure, humidity: Int

   enum CodingKeys: String, CodingKey {
       case temp
       case feelsLike = "feels_like"
       case tempMin = "temp_min"
       case tempMax = "temp_max"
       case pressure, humidity
   }
}


struct Sys: Codable {
   let type, id: Int
   let country: String
   let sunrise, sunset: Int
}


struct Weather: Codable {
   let id: Int
   let main, weatherDescription, icon: String

   enum CodingKeys: String, CodingKey {
       case id, main
       case weatherDescription = "description"
       case icon
   }
}


struct Wind: Codable {
   let speed: Double
   let deg: Int
}


typealias RecvFunc = ((_ item:Temperatures)->Void)?

class OpenWetherMap{
  
   var _action : ((_ item:Temperatures)->Void)?
   
   
   func SetAction(action: ((_ item:Temperatures)->Void)?) {
       self._action = action
   }
  
   func getWather(invoke_url: String, action: RecvFunc) -> Void{
     
       self.SetAction(action: action)
       guard let url = URL(string: invoke_url) else {
           print("URLが正常ではありませんでした")
           return
       }
       let request = URLRequest(url: url)
   
       URLSession.shared.dataTask(with: request) {
           data, response, error in
          
           if let data = data {
            
               if let decodedResponse = try? JSONDecoder().decode(Temperatures.self, from: data) {
                   DispatchQueue.main.async {
                    
                       self._action!(decodedResponse)
                   }
               }
           }
       }
      
              .resume()
          }
       }
