//
//	Wind.swift
//
//	Create by Itsara Chai on 8/8/2018
//	Copyright © 2018. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

struct Wind : Codable {

	let deg : Float?
	let speed : Float?


	enum CodingKeys: String, CodingKey {
		case deg = "deg"
		case speed = "speed"
	}
}
