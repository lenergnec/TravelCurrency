//
//  PairConversion.swift
//  TravelCurrency
//
//  Created by Lener Gonzalez on 14/10/23.
//

import SwiftUI
import Combine

struct PairConversion: View {
	
	@ObservedObject var networkManagerPC = NetworkManager()

	@State private var isModalPresented = false
	
	@State var selectedItemFrom = "AED"
	@State var selectedItemTo = "AED"
	@State var amountTo = ""
		
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
	
	@State private var numericText: String = ""

	
    var body: some View {
		
		NavigationView{
			VStack{
				VStack{
					
					Text("Select your currency")
						.font(.system(size: 25, weight: .medium, design: .rounded))
						
					Text("Here you will change your money with the currency selected.")
						.font(.system(size: 18, weight: .medium, design: .rounded))
						.foregroundStyle(Color.gray)
						.padding(.top, 2)
				}
				.padding(.top, 60)
				
		
				VStack{
					
					TextField("Write here your amount to convert", text: $amountTo)
						.padding(.leading, 23)
						.keyboardType(.decimalPad)
						.onReceive(Just(numericText)) { newNumericText in
							let filtered = newNumericText.filter { ".0123456789".contains($0) }
							if filtered != newNumericText {
								self.numericText = filtered
							}
						}
						
						Divider()
						.background(Color.accentColor)
						.frame(minWidth: 0, minHeight: 10)
					
					HStack{
						Text("From")
							.font(.system(size: 18, weight: .medium, design: .rounded))
							.padding(.trailing, 60)
				
							
						Picker(selection: $selectedItemFrom, label: Text("Select a currency")){
							ForEach(currencyDictionary.sorted(by: { $0.key < $1.key }), id: \.key) { countriesCodes in
								Text("\(countriesCodes.key) - \(countriesCodes.value)").tag(countriesCodes.key)}
						}
						.pickerStyle(MenuPickerStyle())
					}
					
					Divider()
						.background(Color.accentColor)
					
					
					HStack{
						Text("To")
							.font(.system(size: 18, weight: .medium, design: .rounded))
							.padding(.trailing, 80)
						
						
						Picker(selection: $selectedItemTo, label: Text("Select a currency")){
							ForEach(currencyDictionary.sorted(by: { $0.key < $1.key }), id: \.key) { countriesCodes in
								Text("\(countriesCodes.key) - \(countriesCodes.value)").tag(countriesCodes.key)}
						}
						.pickerStyle(MenuPickerStyle())
					}
					
				}
				.padding(.top, 100)
				
				
				VStack{
					
					Button(action: {
						
						print("selectedItemFrom: \(selectedItemFrom)")
						print("selectedItemTo: \(selectedItemTo)")
						print("amountTo: \(amountTo)")
						
						networkManagerPC.convertCurrencies(with: selectedItemFrom, target_code: selectedItemTo, amount: amountTo)
						isModalPresented.toggle()
						
					}) {
						VStack {
							
							Image(systemName: "arrow.left.arrow.right")
								.font(.system(size: 30, weight: .medium, design: .rounded))
								.foregroundColor(Color.whiteBlue)
						}
						.frame(minWidth: 0, maxWidth: .infinity, minHeight: 50)
						.background(Color.accentColor)
						.cornerRadius(25)
						.padding(.top, 20)
						
					}
				}
			}
			.navigationTitle("Convert your money")
			.padding(.horizontal, 20)
			.padding(.top, -200)
			.sheet(isPresented: $isModalPresented) {
				ModalPC(responsePC: networkManagerPC.responsePairConversion, isModalPresented: $isModalPresented, amount: $amountTo)
			}
			
		}
		.onTapGesture {
			networkManagerPC.hideKeyboard()
		}
	}
}


#Preview {
	PairConversion()
}

struct ModalPC: View {
	
	var responsePC: PairConversionResponse?
	
	@Binding var isModalPresented: Bool
	
	@Binding var amount: String
	
	var body: some View {
		
		Text("Conversion Result")
			.font(.system(size: 25, weight: .medium, design: .rounded))
			.padding(.horizontal, 20)
			.padding()
		
		VStack{
			
			if let response = responsePC {
				
				HStack{
					
					Text("Amount requested:")
						.font(.system(size: 20, weight: .medium, design: .rounded))
					
					Text("\(amount) \(response.base_code)")
						.font(.system(size: 20, weight: .medium, design: .rounded))
					
				}
				
				HStack{
					Text("Rate change:")
						.font(.system(size: 20, weight: .medium, design: .rounded))
					
					Text("\(response.conversion_rate) \(response.target_code)")
						.font(.system(size: 20, weight: .medium, design: .rounded))
				}
				
				HStack{
					Text("Conversion:")
						.font(.system(size: 20, weight: .medium, design: .rounded))
					
					Text("\(response.conversion_result) \(response.target_code)")
						.font(.system(size: 20, weight: .medium, design: .rounded))
				}
			}
		}
	}
}

