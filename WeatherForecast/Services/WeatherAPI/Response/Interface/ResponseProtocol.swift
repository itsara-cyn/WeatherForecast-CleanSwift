//
//  ResponseProtocol.swift
//  WeatherForecast
//
//  Created by Itsaraporn Chaichayanon on 8/8/18.
//  Copyright © 2018 ItsaraChai. All rights reserved.
//

import Foundation

protocol ResponseProtocol {
    var cod: String? { get }
    var message: String? { get }
}
