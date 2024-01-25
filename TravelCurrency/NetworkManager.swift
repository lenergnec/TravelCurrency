//
//  Webservice.swift
//  TravelCurrency
//
//  Created by Lener Gonzalez on 5/10/23.
//

import Foundation
import UIKit


enum APError: Error {
	case invalidURL
	case unableToComplete
	case invalidResponse
	case invalidData
	case decodingError
}


class NetworkManager: ObservableObject {
	
	@Published var response: StandardResponseCurrency?
	@Published var responsePairConversion: PairConversionResponse?
	
	
	init () {}
	
	func getCurrencies(with base_code: String) {
		
		if let baseURL = URL(string: "https://v6.exchangerate-api.com/v6/6fa3a7f38b0f9a20d5aaa3a1/latest/\(base_code)"){
			
			
			let task = URLSession.shared.dataTask(with: baseURL) { data, response, error in
				
				if let data = data {
					
					do {
						
						let decoder = JSONDecoder()
						
						let currenciesCode = try decoder.decode(StandardResponseCurrency.self, from: data)
						
						DispatchQueue.main.async {
							self.response = currenciesCode
						}
						
					} catch {
						
						print(APError.decodingError)
					}
				}
				
			}
			task.resume()
		}
	}
	
	func convertCurrencies(with base_code: String, target_code: String, amount: String) {
		
		if let baseURL = URL(string: "https://v6.exchangerate-api.com/v6/6fa3a7f38b0f9a20d5aaa3a1/pair/\(base_code)/\(target_code)/\(amount)") {
			
			let taskPC = URLSession.shared.dataTask(with: baseURL) { dataPC, responsePC, errorPC in
			
				if let dataPC = dataPC {
					
					do{
						let decoder = JSONDecoder()
						let pairConversionRate = try decoder.decode(PairConversionResponse.self, from: dataPC)
						
						DispatchQueue.main.async {
							self.responsePairConversion = pairConversionRate
							print("test\(pairConversionRate)")
							print("pairConversionRate: \(pairConversionRate)")

							
						}
					}catch {
						print(APError.decodingError)
					}
					
					
				}
				
				
			}
			taskPC.resume()
		}
		
		
	}
	
	func hideKeyboard() {
			UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
		}
}
