//
//  WeatherManager.swift
//  Clima
//
//  Created by Sherzod Fayziev on 19/01/24.
//  Copyright © 2024 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=e000bff636b7c9666d77e9d1d8e909d3&units=metric"
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
        performRequest(urlString: urlString)
        print (urlString)
    }
    
    func performRequest(urlString: String) {
        
        //1.Create URL
        if let url = URL(string: urlString) {
            
            //2.Create URLSession
            let session = URLSession(configuration: .default)
            
            //3.Give the session task
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    print (error!)
                    return
                }
                if let safeData = data {
                    
                }
            }
            //4.Start the task
            task.resume()
        }
    }
}
