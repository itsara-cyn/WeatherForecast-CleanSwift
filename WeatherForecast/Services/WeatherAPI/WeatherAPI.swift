//
//  WeatherAPI.swift
//  WeatherForecast
//
//  Created by Itsaraporn Chaichayanon on 6/8/18.
//  Copyright © 2018 ItsaraChai. All rights reserved.
//


import Foundation
import Moya

let kAPIKEY = "634ca94ab80b3777b8d14f4d48bb4ced"
let kHostUrl = "http://api.openweathermap.org/data/2.5"
let kEnableLog = true

var WeatherAPI_DefaultPlugins: [PluginType] = [NetworkLoggerPlugin(verbose: kEnableLog)]

enum WeatherAPI {
    case getCurrentWeatherByCityName(location: String)
    case getForecastByCityName(location: String)
}

extension WeatherAPI {
    
    func getEndPoint () -> (WeatherAPI) -> Endpoint {
        let endpointClosure = { (target: WeatherAPI) -> Endpoint in
            return MoyaProvider.defaultEndpointMapping(for: target)
        }
        return endpointClosure
    }
}

extension WeatherAPI: TargetType {
    var headers: [String : String]? {
        return nil
    }
    
    
    public var baseURL: URL {
        return URL(string: "\(kHostUrl)")!
    }
    
    public var path: String {
        switch self {
        case .getCurrentWeatherByCityName:
            return "/weather"
        case .getForecastByCityName:
            return "/forecast"
        }
    }
    
    public var method: Moya.Method {
        switch self {
        case .getCurrentWeatherByCityName,
             .getForecastByCityName:
            return .get
        }
    }
    
    public var parameters: [String: Any]? {
        switch self {
        case .getCurrentWeatherByCityName(let location):
            return [
                "q": location,
                "units": "metric",
                "APPID": kAPIKEY
            ]
        case .getForecastByCityName(let location):
            return [
                "q": location,
                "units": "metric",
                "cnt": 7,
                "APPID": kAPIKEY
            ]
        }
    }
    
    public var task: Task {
        switch self {
        case .getCurrentWeatherByCityName,
             .getForecastByCityName:
            if let _param = self.parameters {
                return .requestParameters(parameters: _param, encoding: URLEncoding.default)
            }
            else {
                return .requestPlain
            }
        }
    }
    
    public var validate: Bool {
        switch self {
        default:
            return true
        }
    }
    
    public var sampleData: Data {
        var responseString = ""
        switch self {
        case .getCurrentWeatherByCityName: responseString = response_get_current_weather; break
        case .getForecastByCityName: responseString = response_get_forcast; break
        }
        return responseString.data(using: String.Encoding.utf8)!
    }
}
