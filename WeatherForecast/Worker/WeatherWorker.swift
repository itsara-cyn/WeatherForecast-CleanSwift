//
//  WeatherWorker.swift
//  WeatherForecast
//
//  Created by Itsaraporn Chaichayanon on 7/8/18.
//  Copyright © 2018 ItsaraChai. All rights reserved.
//

import Foundation

class WeatherWorker {
    
}

protocol WeatherStoreProtocol
{
    func fetchCurrentWeather(location: String, completionHandler: @escaping (WeatherStoreResult) -> Void)
}
