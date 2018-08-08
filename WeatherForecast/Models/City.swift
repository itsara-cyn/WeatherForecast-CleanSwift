//
//	City.swift
//
//	Create by Itsara Chai on 8/8/2018
//	Copyright © 2018. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

struct City : Codable {

	let coord : Coord?
	let country : String?
	let id : Int?
	let name : String?
	let population : Int?


	enum CodingKeys: String, CodingKey {
		case coord
		case country = "country"
		case id = "id"
		case name = "name"
		case population = "population"
	}
}
