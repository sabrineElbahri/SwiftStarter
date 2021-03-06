//
//  WeatherCondition.swift
//  App
//
//  Created by Benoit Verdier on 09/02/2016.
//  Copyright © 2016 3IE. All rights reserved.
//

import Foundation
import ObjectMapper

struct WeatherCondition {
	var code: Int?
	var temperature: Int?
	var description: String?
}

//MARK: ObjectMapper
extension WeatherCondition: Mappable {
	init?(map: Map) {
	}
	
	mutating func mapping(map: Map) {
		code <- (map["code"], IntTransform())
		temperature <- (map["temp"], IntTransform())
		description <- map["text"]
	}
}
