//
//  WeatherStore.swift
//  WeatherForecast
//
//  Created by Itsaraporn Chaichayanon on 7/8/18.
//  Copyright © 2018 ItsaraChai. All rights reserved.
//

import Foundation


//protocol WeatherStoreDataStore
//{
//    var forecastItem: ForecastItem? { get set }
//}

enum WeatherStoreResult {
    case forecastItem(ForecastItem)
    case error(WeatherError)
}

enum WeatherError: Error {
    case timeout
    case encodableMapping(Swift.Error)
    case underlying(Swift.Error)
    case unknown
}

