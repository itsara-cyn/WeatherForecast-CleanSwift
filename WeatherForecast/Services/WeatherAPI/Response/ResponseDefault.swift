//
//  ResponseDefault.swift
//  WeatherForecast
//
//  Created by Itsaraporn Chaichayanon on 7/8/18.
//  Copyright © 2018 ItsaraChai. All rights reserved.
//

import Foundation

struct ResponseDefault : Codable, ResponseProtocol {

    let cod : String?
    let message : String?

    enum CodingKeys: String, CodingKey {
        case cod = "cod"
        case message = "message"
    }
}
