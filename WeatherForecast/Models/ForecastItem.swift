//
//	RootClass.swift
//
//	Create by Itsara Chai on 6/8/2018
//	Copyright © 2018. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

struct ForecastItem : Codable {

	let base : String?
	let clouds : Cloud?
	let cod : Int?
	let coord : Coord?
	let dt : Int?
	let id : Int?
	let main : Main?
	let name : String?
	let sys : Sy?
	let visibility : Int?
	let weather : [Weather]?
	let wind : Wind?
    
	enum CodingKeys: String, CodingKey {
		case base = "base"
		case clouds
		case cod = "cod"
		case coord
		case dt = "dt"
		case id = "id"
		case main
		case name = "name"
		case sys
		case visibility = "visibility"
		case weather = "weather"
		case wind
	}
}
