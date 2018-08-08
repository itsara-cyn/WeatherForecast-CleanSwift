//
//	Coord.swift
//
//	Create by Itsara Chai on 8/8/2018
//	Copyright © 2018. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

struct Coord : Codable {

	let lat : Float?
	let lon : Float?


	enum CodingKeys: String, CodingKey {
		case lat = "lat"
		case lon = "lon"
	}
}
