//
//  APIHelper.swift
//  WeatherForecast
//
//  Created by Itsaraporn Chaichayanon on 6/8/18.
//  Copyright © 2018 ItsaraChai. All rights reserved.
//

import Foundation
import Moya
import Alamofire

class DefaultAlamofireManager: Alamofire.SessionManager {
    static let sharedManager: DefaultAlamofireManager = {
        let configuration = URLSessionConfiguration.default
        configuration.httpAdditionalHeaders = Alamofire.SessionManager.defaultHTTPHeaders
        configuration.timeoutIntervalForRequest = 60
        configuration.timeoutIntervalForResource = 60
        configuration.requestCachePolicy = .useProtocolCachePolicy
        return DefaultAlamofireManager(configuration: configuration)
    }()
}

class APIHelper {
    
    @discardableResult
    class func getRequesterDefault(service: WeatherAPI, completion: @escaping Moya.Completion) -> Cancellable {
//        return APIHelper.getLocalRequester(service: service, completion: completion)
        return APIHelper.getRemoteRequester(service: service, completion: completion)
//        #if DEV
//        if (kAllowMockUpData) {
//            return APIHelper.getLocalRequester(service: service, completion: completion)
//        }
//        else {
//            return APIHelper.getRemoteRequester(service: service, completion: completion)
//        }
//        #else
//        return APIHelper.getRemoteRequester(service: service, completion: completion)
//        #endif
    }
    
    class func getRemoteRequester(service: WeatherAPI, completion: @escaping Moya.Completion) -> Cancellable {
        let provider = MoyaProvider<WeatherAPI>(
            endpointClosure: service.getEndPoint(),
            manager: DefaultAlamofireManager.sharedManager,
            plugins: WeatherAPI_DefaultPlugins)
        return provider.request(service, completion: completion)
    }
    
    class func getLocalRequester(service: WeatherAPI, completion: @escaping Moya.Completion) -> Cancellable {
        let provider = MoyaProvider<WeatherAPI>(
            endpointClosure: service.getEndPoint(),
            stubClosure: MoyaProvider.delayedStub(0.5),
            plugins: WeatherAPI_DefaultPlugins)
        return provider.request(service, completion: completion)
        
    }
    
    class func parseDataResponse <T: Decodable> (data: Data) -> T? {
        do {
            let jsonDecoder = JSONDecoder()
            return try jsonDecoder.decode(T.self, from: data)
        }
        catch let error {
            print("parseDataResponse : \(error)")
            return nil
        }
    }
}

