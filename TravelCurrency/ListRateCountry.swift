//
//  ListRateCountry.swift
//  TravelCurrency
//
//  Created by Lener Gonzalez on 5/10/23.
//

import SwiftUI

struct ListRateCountry: View {
	
	
	@ObservedObject var networkManager = NetworkManager()
	
	@State var selectedItem = "AED"
	
	@State private var isModalPresented = false
	
	@State var currencyDictionary: [String: String] = [
		"AED": "United Arab Emirates",
		   "AFN": "Afghanistan",
		   "ALL": "Albania",
		   "AMD": "Armenia",
		   "ANG": "Netherlands Antilles",
		   "AOA": "Angola",
		   "ARS": "Argentina",
		   "AUD": "Australia",
		   "AWG": "Aruba",
		   "AZN": "Azerbaijan",
		   "BAM": "Bosnia and Herzegovina",
		   "BBD": "Barbados",
		   "BDT": "Bangladesh",
		   "BGN": "Bulgaria",
		   "BHD": "Bahrain",
		   "BIF": "Burundi",
		   "BMD": "Bermuda",
		   "BND": "Brunei",
		   "BOB": "Bolivia",
		   "BRL": "Brazil",
		   "BSD": "Bahamas",
		   "BTN": "Bhutan",
		   "BWP": "Botswana",
		   "BYN": "Belarus",
		   "BZD": "Belize",
		   "CAD": "Canada",
		   "CDF": "Democratic Republic of the Congo",
		   "CHF": "Switzerland",
		   "CLP": "Chile",
		   "CNY": "China",
		   "COP": "Colombia",
		   "CRC": "Costa Rica",
		   "CUP": "Cuba",
		   "CVE": "Cape Verde",
		   "CZK": "Czech Republic",
		   "DJF": "Djibouti",
		   "DKK": "Denmark",
		   "DOP": "Dominican Republic",
		   "DZD": "Algeria",
		   "EGP": "Egypt",
		   "ERN": "Eritrea",
		   "ETB": "Ethiopia",
		   "EUR": "European Union",
		   "FJD": "Fiji",
		   "FKP": "Falkland Islands",
		   "FOK": "Faroe Islands",
		   "GBP": "United Kingdom",
		   "GEL": "Georgia",
		   "GGP": "Guernsey",
		   "GHS": "Ghana",
		   "GIP": "Gibraltar",
		   "GMD": "The Gambia",
		   "GNF": "Guinea",
		   "GTQ": "Guatemala",
		   "GYD": "Guyana",
		   "HKD": "Hong Kong",
		   "HNL": "Honduras",
		   "HRK": "Croatia",
		   "HTG": "Haiti",
		   "HUF": "Hungary",
		   "IDR": "Indonesia",
		   "ILS": "Israel",
		   "IMP": "Isle of Man",
		   "INR": "India",
		   "IQD": "Iraq",
		   "IRR": "Iran",
		   "ISK": "Iceland",
		   "JEP": "Jersey",
		   "JMD": "Jamaica",
		   "JOD": "Jordan",
		   "JPY": "Japan",
		   "KES": "Kenya",
		   "KGS": "Kyrgyzstan",
		   "KHR": "Cambodia",
		   "KID": "Kiribati",
		   "KMF": "Comoros",
		   "KRW": "South Korea",
		   "KWD": "Kuwait",
		   "KYD": "Cayman Islands",
		   "KZT": "Kazakhstan",
		   "LAK": "Laos",
		   "LBP": "Lebanon",
		   "LKR": "Sri Lanka",
		   "LRD": "Liberia",
		   "LSL": "Lesotho",
		   "LYD": "Libya",
		   "MAD": "Morocco",
		   "MDL": "Moldova",
		   "MGA": "Madagascar",
		   "MKD": "North Macedonia",
		   "MMK": "Myanmar",
		   "MNT": "Mongolia",
		   "MOP": "Macau",
		   "MRU": "Mauritania",
		   "MUR": "Mauritius",
		   "MVR": "Maldives",
		   "MWK": "Malawi",
		   "MXN": "Mexico",
		   "MYR": "Malaysia",
		   "MZN": "Mozambique",
		   "NAD": "Namibia",
		   "NGN": "Nigeria",
		   "NIO": "Nicaragua",
		   "NOK": "Norway",
		   "NPR": "Nepal",
		   "NZD": "New Zealand",
		   "OMR": "Oman",
		   "PAB": "Panama",
		   "PEN": "Peru",
		   "PGK": "Papua New Guinea",
		   "PHP": "Philippines",
		   "PKR": "Pakistan",
		   "PLN": "Poland",
		   "PYG": "Paraguay",
		   "QAR": "Qatar",
		   "RON": "Romania",
		   "RSD": "Serbia",
		   "RUB": "Russia",
		   "RWF": "Rwanda",
		   "SAR": "Saudi Arabia",
		   "SBD": "Solomon Islands",
		   "SCR": "Seychelles",
		   "SDG": "Sudan",
		   "SEK": "Sweden",
		   "SGD": "Singapore",
		   "SHP": "Saint Helena",
		   "SLE": "Sierra Leone",
		   "SOS": "Somalia",
		   "SRD": "Suriname",
		   "SSP": "South Sudan",
		   "STN": "São Tomé and Príncipe",
		   "SYP": "Syria",
		   "SZL": "Eswatini",
		   "THB": "Thailand",
		   "TJS": "Tajikistan",
		   "TMT": "Turkmenistan",
		   "TND": "Tunisia",
		   "TOP": "Tonga",
		   "TRY": "Turkey",
		   "TTD": "Trinidad and Tobago",
		   "TVD": "Tuvalu",
		   "TWD": "Taiwan",
		   "TZS": "Tanzania",
		   "UAH": "Ukraine",
		   "UGX": "Uganda",
		   "USD": "United States",
		   "UYU": "Uruguay",
		   "UZS": "Uzbekistan",
		   "VES": "Venezuela",
		   "VND": "Vietnam",
		   "VUV": "Vanuatu",
		   "WST": "Samoa",
		   "XAF": "CEMAC",
		   "XCD": "Organisation of Eastern Caribbean States",
		   "XDR": "International Monetary Fund",
		   "XOF": "CFA",
		   "XPF": "Collectivités d'Outre-Mer",
		   "YER": "Yemen",
		   "ZAR": "South Africa",
		   "ZMW": "Zambia",
		   "ZWL": "Zimbabwe"
	]
	
    var body: some View {
		
		NavigationView{
			VStack{
				VStack{
					Text("Select your currency")
						.font(.system(size: 25, weight: .medium, design: .rounded))
						.foregroundStyle(.orange)
						
					Text("Here you will compare 1 of your currency with all currency. You will see all the currency calculated againts your currency.")
						.font(.system(size: 18, weight: .medium, design: .rounded))
						.foregroundStyle(Color.white)
						.padding(.top, 10)
						
				}
				.padding(.horizontal, 15)
				
				HStack{
					Text("Select here")
						.font(.system(size: 20, weight: .medium, design: .rounded))
						.foregroundStyle(.orange)
					
					Image(systemName: "arrow.right.circle.fill")
						.font(.system(size: 35, weight: .medium, design: .rounded))
						.foregroundColor(Color.orange)
					
						
					Picker(selection: $selectedItem, label: Text("Select a currency")){
						ForEach(currencyDictionary.sorted(by: { $0.key < $1.key }), id: \.key) { countriesCodes in
							Text("\(countriesCodes.key) - \(countriesCodes.value)").tag(countriesCodes.key)}
					}
					.pickerStyle(MenuPickerStyle())
					.accentColor(.orange)
					
				}
				.padding(.top, 50)
				.padding(.horizontal, 15)
				
				VStack{
					Text("Moneda seleccionada: \(selectedItem)")
						.font(.system(size: 20, weight: .medium, design: .rounded))
						.foregroundStyle(.white)
					Text("Pais seleccionado: \(currencyDictionary[selectedItem] ?? "")")
						.font(.system(size: 20, weight: .medium, design: .rounded))
						.foregroundStyle(.white)
						
					Button(action: {
						
						networkManager.getCurrencies(with: selectedItem)
						isModalPresented.toggle()
						
						
					}) {
						VStack {
							
							Image(systemName: "arrow.left.arrow.right")
								.font(.system(size: 30, weight: .medium, design: .rounded))
								.foregroundColor(Color.orange)
						}
						.frame(minWidth: 0, maxWidth: .infinity, minHeight: 50)
						.background(Color.white)
						.cornerRadius(25)
						.padding(.top, 20)

					}
	
				}
				.padding(.top, 40)
				.padding(.horizontal, 15)
				.sheet(isPresented: $isModalPresented) {
					ModalView(response: networkManager.response, isModalPresented: $isModalPresented)
				}
				
			}
			.frame(minWidth: 0, maxWidth: .infinity, minHeight: 500)
			.padding(.vertical, 10)
			.background(Color(.tangaroa))
			.cornerRadius(25)
			.padding()
			.padding(.horizontal, 5)
			.navigationTitle("Compare your money")
			
		
		}
		
    }
}

struct ModalView: View {
	
	var response: StandardResponseCurrency?
	
	var currencyDictionary: [String: String] = [
		"AED": "United Arab Emirates",
		   "AFN": "Afghanistan",
		   "ALL": "Albania",
		   "AMD": "Armenia",
		   "ANG": "Netherlands Antilles",
		   "AOA": "Angola",
		   "ARS": "Argentina",
		   "AUD": "Australia",
		   "AWG": "Aruba",
		   "AZN": "Azerbaijan",
		   "BAM": "Bosnia and Herzegovina",
		   "BBD": "Barbados",
		   "BDT": "Bangladesh",
		   "BGN": "Bulgaria",
		   "BHD": "Bahrain",
		   "BIF": "Burundi",
		   "BMD": "Bermuda",
		   "BND": "Brunei",
		   "BOB": "Bolivia",
		   "BRL": "Brazil",
		   "BSD": "Bahamas",
		   "BTN": "Bhutan",
		   "BWP": "Botswana",
		   "BYN": "Belarus",
		   "BZD": "Belize",
		   "CAD": "Canada",
		   "CDF": "Democratic Republic of the Congo",
		   "CHF": "Switzerland",
		   "CLP": "Chile",
		   "CNY": "China",
		   "COP": "Colombia",
		   "CRC": "Costa Rica",
		   "CUP": "Cuba",
		   "CVE": "Cape Verde",
		   "CZK": "Czech Republic",
		   "DJF": "Djibouti",
		   "DKK": "Denmark",
		   "DOP": "Dominican Republic",
		   "DZD": "Algeria",
		   "EGP": "Egypt",
		   "ERN": "Eritrea",
		   "ETB": "Ethiopia",
		   "EUR": "European Union",
		   "FJD": "Fiji",
		   "FKP": "Falkland Islands",
		   "FOK": "Faroe Islands",
		   "GBP": "United Kingdom",
		   "GEL": "Georgia",
		   "GGP": "Guernsey",
		   "GHS": "Ghana",
		   "GIP": "Gibraltar",
		   "GMD": "The Gambia",
		   "GNF": "Guinea",
		   "GTQ": "Guatemala",
		   "GYD": "Guyana",
		   "HKD": "Hong Kong",
		   "HNL": "Honduras",
		   "HRK": "Croatia",
		   "HTG": "Haiti",
		   "HUF": "Hungary",
		   "IDR": "Indonesia",
		   "ILS": "Israel",
		   "IMP": "Isle of Man",
		   "INR": "India",
		   "IQD": "Iraq",
		   "IRR": "Iran",
		   "ISK": "Iceland",
		   "JEP": "Jersey",
		   "JMD": "Jamaica",
		   "JOD": "Jordan",
		   "JPY": "Japan",
		   "KES": "Kenya",
		   "KGS": "Kyrgyzstan",
		   "KHR": "Cambodia",
		   "KID": "Kiribati",
		   "KMF": "Comoros",
		   "KRW": "South Korea",
		   "KWD": "Kuwait",
		   "KYD": "Cayman Islands",
		   "KZT": "Kazakhstan",
		   "LAK": "Laos",
		   "LBP": "Lebanon",
		   "LKR": "Sri Lanka",
		   "LRD": "Liberia",
		   "LSL": "Lesotho",
		   "LYD": "Libya",
		   "MAD": "Morocco",
		   "MDL": "Moldova",
		   "MGA": "Madagascar",
		   "MKD": "North Macedonia",
		   "MMK": "Myanmar",
		   "MNT": "Mongolia",
		   "MOP": "Macau",
		   "MRU": "Mauritania",
		   "MUR": "Mauritius",
		   "MVR": "Maldives",
		   "MWK": "Malawi",
		   "MXN": "Mexico",
		   "MYR": "Malaysia",
		   "MZN": "Mozambique",
		   "NAD": "Namibia",
		   "NGN": "Nigeria",
		   "NIO": "Nicaragua",
		   "NOK": "Norway",
		   "NPR": "Nepal",
		   "NZD": "New Zealand",
		   "OMR": "Oman",
		   "PAB": "Panama",
		   "PEN": "Peru",
		   "PGK": "Papua New Guinea",
		   "PHP": "Philippines",
		   "PKR": "Pakistan",
		   "PLN": "Poland",
		   "PYG": "Paraguay",
		   "QAR": "Qatar",
		   "RON": "Romania",
		   "RSD": "Serbia",
		   "RUB": "Russia",
		   "RWF": "Rwanda",
		   "SAR": "Saudi Arabia",
		   "SBD": "Solomon Islands",
		   "SCR": "Seychelles",
		   "SDG": "Sudan",
		   "SEK": "Sweden",
		   "SGD": "Singapore",
		   "SHP": "Saint Helena",
		   "SLE": "Sierra Leone",
		   "SOS": "Somalia",
		   "SRD": "Suriname",
		   "SSP": "South Sudan",
		   "STN": "São Tomé and Príncipe",
		   "SYP": "Syria",
		   "SZL": "Eswatini",
		   "THB": "Thailand",
		   "TJS": "Tajikistan",
		   "TMT": "Turkmenistan",
		   "TND": "Tunisia",
		   "TOP": "Tonga",
		   "TRY": "Turkey",
		   "TTD": "Trinidad and Tobago",
		   "TVD": "Tuvalu",
		   "TWD": "Taiwan",
		   "TZS": "Tanzania",
		   "UAH": "Ukraine",
		   "UGX": "Uganda",
		   "USD": "United States",
		   "UYU": "Uruguay",
		   "UZS": "Uzbekistan",
		   "VES": "Venezuela",
		   "VND": "Vietnam",
		   "VUV": "Vanuatu",
		   "WST": "Samoa",
		   "XAF": "CEMAC",
		   "XCD": "Organisation of Eastern Caribbean States",
		   "XDR": "International Monetary Fund",
		   "XOF": "CFA",
		   "XPF": "Collectivités d'Outre-Mer",
		   "YER": "Yemen",
		   "ZAR": "South Africa",
		   "ZMW": "Zambia",
		   "ZWL": "Zimbabwe"
	]
	
	@Binding var isModalPresented: Bool

	var body: some View {
		
		NavigationView {
			
			VStack {
				
				if let response = response {
					Text("1 \(response.base_code) is equal to:")
						.font(.system(size: 25, weight: .medium, design: .rounded))
					
					List(response.conversion_rates.sorted(by: { $0.key < $1.key }), id: \.key) { key, value in
						Text("\(key): \(value)")
							.font(.system(size: 20, weight: .medium, design: .rounded))
					}
				}
				
				Button("Cerrar") {
					
					isModalPresented = false
				}
				.padding()
			}
			
			.navigationTitle("Currencies information")
		}
	}
}


#Preview {
    ListRateCountry()
}

