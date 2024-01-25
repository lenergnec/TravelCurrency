//
//  ModelStandardCurrency.swift
//  TravelCurrency
//
//  Created by Lener Gonzalez on 4/10/23.
//

import Foundation


struct StandardResponseCurrency: Codable, Hashable {
	var base_code: String
	var conversion_rates: [String : Double]
	var result: String
}

struct PairConversionResponse: Codable, Hashable {
	var base_code: String
	var target_code: String
	var conversion_rate: Double
	var conversion_result: Double
	var result: String
}


