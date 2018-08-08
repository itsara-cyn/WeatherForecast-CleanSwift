//
//	RootClass.swift
//
//	Create by Itsara Chai on 8/8/2018
//	Copyright © 2018. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

struct ForecastResponse : Codable, ResponseProtocol {
    
    let cod: String?
    let message: String?
	let city : City?
	let cnt : Int?
	let list : [ForecastItem]?

	enum CodingKeys: String, CodingKey {
		case city
		case cnt = "cnt"
		case list = "list"
        case cod = "cod"
        case message = "message"
	}
}
