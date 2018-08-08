//
//	Main.swift
//
//	Create by Itsara Chai on 8/8/2018
//	Copyright © 2018. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

struct Main : Codable {

	let grndLevel : Float?
	let humidity : Int?
	let pressure : Float?
	let seaLevel : Float?
	let temp : Float?
	let tempKf : Int?
	let tempMax : Float?
	let tempMin : Float?


	enum CodingKeys: String, CodingKey {
		case grndLevel = "grnd_level"
		case humidity = "humidity"
		case pressure = "pressure"
		case seaLevel = "sea_level"
		case temp = "temp"
		case tempKf = "temp_kf"
		case tempMax = "temp_max"
		case tempMin = "temp_min"
	}
}
