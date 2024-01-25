//
//  CountriesList.swift
//  TravelCurrency
//
//  Created by Lener Gonzalez on 5/10/23.
//

import SwiftUI

struct CountriesList: View {
	
	let currencyDictionary: [String: String] = [
		"United Arab Emirates": "UAE Dirham",
		"Afghanistan": "Afghan Afghani",
		"Albania": "Albanian Lek",
		"Armenia": "Armenian Dram",
		"Netherlands Antilles": "Netherlands Antillian Guilder",
		"Angola": "Angolan Kwanza",
		"Argentina": "Argentine Peso",
		"Australia": "Australian Dollar",
		"Aruba": "Aruban Florin",
		"Azerbaijan": "Azerbaijani Manat",
		"Bosnia and Herzegovina": "Bosnia and Herzegovina Mark",
		"Barbados": "Barbados Dollar",
		"Bangladesh": "Bangladeshi Taka",
		"Bulgaria": "Bulgarian Lev",
		"Bahrain": "Bahraini Dinar",
		"Burundi": "Burundian Franc",
		"Bermuda": "Bermudian Dollar",
		"Brunei": "Brunei Dollar",
		"Bolivia": "Bolivian Boliviano",
		"Brazil": "Brazilian Real",
		"Bahamas": "Bahamian Dollar",
		"Bhutan": "Bhutanese Ngultrum",
		"Botswana": "Botswana Pula",
		"Belarus": "Belarusian Ruble",
		"Belize": "Belize Dollar",
		"Canada": "Canadian Dollar",
		"Democratic Republic of the Congo": "Congolese Franc",
		"Switzerland": "Swiss Franc",
		"Chile": "Chilean Peso",
		"China": "Chinese Renminbi",
		"Colombia": "Colombian Peso",
		"Costa Rica": "Costa Rican Colon",
		"Cuba": "Cuban Peso",
		"Cape Verde": "Cape Verdean Escudo",
		"Czech Republic": "Czech Koruna",
		"Djibouti": "Djiboutian Franc",
		"Denmark": "Danish Krone",
		"Dominican Republic": "Dominican Peso",
		"Algeria": "Algerian Dinar",
		"Egypt": "Egyptian Pound",
		"Eritrea": "Eritrean Nakfa",
		"Ethiopia": "Ethiopian Birr",
		"European Union": "Euro",
		"Fiji": "Fiji Dollar",
		"Falkland Islands": "Falkland Islands Pound",
		"Faroe Islands": "Faroese Króna",
		"United Kingdom": "Pound Sterling",
		"Georgia": "Georgian Lari",
		"Guernsey": "Guernsey Pound",
		"Ghana": "Ghanaian Cedi",
		"Gibraltar": "Gibraltar Pound",
		"The Gambia": "Gambian Dalasi",
		"Guinea": "Guinean Franc",
		"Guatemala": "Guatemalan Quetzal",
		"Guyana": "Guyanese Dollar",
		"Hong Kong": "Hong Kong Dollar",
		"Honduras": "Honduran Lempira",
		"Croatia": "Croatian Kuna",
		"Haiti": "Haitian Gourde",
		"Hungary": "Hungarian Forint",
		"Indonesia": "Indonesian Rupiah",
		"Israel": "Israeli New Shekel",
		"Isle of Man": "Manx Pound",
		"India": "Indian Rupee",
		"Iraq": "Iraqi Dinar",
		"Iran": "Iranian Rial",
		"Iceland": "Icelandic Króna",
		"Jersey": "Jersey Pound",
		"Jamaica": "Jamaican Dollar",
		"Jordan": "Jordanian Dinar",
		"Japan": "Japanese Yen",
		"Kenya": "Kenyan Shilling",
		"Kyrgyzstan": "Kyrgyzstani Som",
		"Cambodia": "Cambodian Riel",
		"Kiribati": "Kiribati Dollar",
		"Comoros": "Comorian Franc",
		"South Korea": "South Korean Won",
		"Kuwait": "Kuwaiti Dinar",
		"Cayman Islands": "Cayman Islands Dollar",
		"Kazakhstan": "Kazakhstani Tenge",
		"Laos": "Lao Kip",
		"Lebanon": "Lebanese Pound",
		"Sri Lanka": "Sri Lanka Rupee",
		"Liberia": "Liberian Dollar",
		"Lesotho": "Lesotho Loti",
		"Libya": "Libyan Dinar",
		"Morocco": "Moroccan Dirham",
		"Moldova": "Moldovan Leu",
		"Madagascar": "Malagasy Ariary",
		"North Macedonia": "Macedonian Denar",
		"Myanmar": "Burmese Kyat",
		"Mongolia": "Mongolian Tögrög",
		"Macau": "Macanese Pataca",
		"Mauritania": "Mauritanian Ouguiya",
		"Mauritius": "Mauritian Rupee",
		"Maldives": "Maldivian Rufiyaa",
		"Malawi": "Malawian Kwacha",
		"Mexico": "Mexican Peso",
		"Malaysia": "Malaysian Ringgit",
		"Mozambique": "Mozambican Metical",
		"Namibia": "Namibian Dollar",
		"Nigeria": "Nigerian Naira",
		"Nicaragua": "Nicaraguan Córdoba",
		"Norway": "Norwegian Krone",
		"Nepal": "Nepalese Rupee",
		"New Zealand": "New Zealand Dollar",
		"Oman": "Omani Rial",
		"Panama": "Panamanian Balboa",
		"Peru": "Peruvian Sol",
		"Papua New Guinea": "Papua New Guinean Kina",
		"Philippines": "Philippine Peso",
		"Pakistan": "Pakistani Rupee",
		"Poland": "Polish Złoty",
		"Paraguay": "Paraguayan Guaraní",
		"Qatar": "Qatari Riyal",
		"Romania": "Romanian Leu",
		"Serbia": "Serbian Dinar",
		"Russia": "Russian Ruble",
		"Rwanda": "Rwandan Franc",
		"Saudi Arabia": "Saudi Riyal",
		"Solomon Islands": "Solomon Islands Dollar",
		"Seychelles": "Seychellois Rupee",
		"Sudan": "Sudanese Pound",
		"Sweden": "Swedish Krona",
		"Singapore": "Singapore Dollar",
		"Saint Helena": "Saint Helena Pound",
		"Sierra Leone": "Sierra Leonean Leone",
		"Somalia": "Somali Shilling",
		"Suriname": "Surinamese Dollar",
		"South Sudan": "South Sudanese Pound",
		"São Tomé and Príncipe": "São Tomé and Príncipe Dobra",
		"Syria": "Syrian Pound",
		"Eswatini": "Eswatini Lilangeni",
		"Thailand": "Thai Baht",
		"Tajikistan": "Tajikistani Somoni",
		"Turkmenistan": "Turkmenistan Manat",
		"Tunisia": "Tunisian Dinar",
		"Tonga": "Tongan Paʻanga",
		"Turkey": "Turkish Lira",
		"Trinidad and Tobago": "Trinidad and Tobago Dollar",
		"Tuvalu": "Tuvaluan Dollar",
		"Taiwan": "New Taiwan Dollar",
		"Tanzania": "Tanzanian Shilling",
		"Ukraine": "Ukrainian Hryvnia",
		"Uganda": "Ugandan Shilling",
		"United States": "United States Dollar",
		"Uruguay": "Uruguayan Peso",
		"Uzbekistan": "Uzbekistani So'm",
		"Venezuela": "Venezuelan Bolívar Soberano",
		"Vietnam": "Vietnamese Đồng",
		"Vanuatu": "Vanuatu Vatu",
		"Samoa": "Samoan Tālā",
		"CEMAC": "Central African CFA Franc",
		"Organisation of Eastern Caribbean States": "East Caribbean Dollar",
		"International Monetary Fund": "Special Drawing Rights",
		"CFA": "West African CFA franc",
		"Collectivités d'Outre-Mer": "CFP Franc",
		"Yemen": "Yemeni Rial",
		"South Africa": "South African Rand",
		"Zambia": "Zambian Kwacha",
		"Zimbabwe": "Zimbabwean Dollar"
	]
	
	var body: some View {
		countries()
	}
}

#Preview {
	CountriesList()
}

struct countries: View {
	
	let africaCountries: [String: String] = [
		"Angola": "Angolan Kwanza",
		"Burundi": "Burundian Franc",
		"Benin": "West African CFA franc",
		"Barbados": "Barbados Dollar",
		"Botswana": "Botswana Pula",
		"Belize": "Belize Dollar",
		"Democratic Republic of the Congo": "Congolese Franc",
		"Comoros": "Comorian Franc",
		"Eswatini": "Eswatini Lilangeni",
		"Ethiopia": "Ethiopian Birr",
		"The Gambia": "Gambian Dalasi",
		"Ghana": "Ghanaian Cedi",
		"Guinea": "Guinean Franc",
		"Guinea-Bissau": "West African CFA franc",
		"Ivory Coast": "West African CFA franc",
		"Kenya": "Kenyan Shilling",
		"Lesotho": "Lesotho Loti",
		"Liberia": "Liberian Dollar",
		"Madagascar": "Malagasy Ariary",
		"Malawi": "Malawian Kwacha",
		"Mauritius": "Mauritian Rupee",
		"Mozambique": "Mozambican Metical",
		"Namibia": "Namibian Dollar",
		"Nigeria": "Nigerian Naira",
		"Rwanda": "Rwandan Franc",
		"São Tomé and Príncipe": "São Tomé and Príncipe Dobra",
		"Seychelles": "Seychellois Rupee",
		"Sierra Leone": "Sierra Leonean Leone",
		"Somalia": "Somali Shilling",
		"South Africa": "South African Rand",
		"South Sudan": "South Sudanese Pound",
		"Sudan": "Sudanese Pound",
		"Tanzania": "Tanzanian Shilling",
		"Uganda": "Ugandan Shilling",
		"Zambia": "Zambian Kwacha",
		"Zimbabwe": "Zimbabwean Dollar"
	]
	let caribeanAmericaCountries: [String: String] = [
		"Bermuda": "Bermudian Dollar",
		"Cayman Islands": "Cayman Islands Dollar",
		"Greenland": "Danish Krone",
		"Dominican Republic": "Dominican Peso",
		"Haiti": "Haitian Gourde",
		"Jamaica": "Jamaican Dollar",
		"Puerto Rico": "United States Dollar",
		"Cuba": "Cuban Peso",
		"Bahamas": "Bahamian Dollar",
		"Turks and Caicos Islands": "United States Dollar",
		"Saint Kitts and Nevis": "East Caribbean Dollar",
		"Antigua and Barbuda": "East Caribbean Dollar",
		"Saint Vincent and the Grenadines": "East Caribbean Dollar",
		"Grenada": "East Caribbean Dollar",
		"Barbados": "Barbados Dollar",
		"Trinidad and Tobago": "Trinidad and Tobago Dollar",
		"Dominica": "East Caribbean Dollar",
	]
	let asiaCountries: [String: String] = [
		"Afghanistan": "Afghan Afghani",
		"Armenia": "Armenian Dram",
		"Azerbaijan": "Azerbaijani Manat",
		"Bahrain": "Bahraini Dinar",
		"Bangladesh": "Bangladeshi Taka",
		"Bhutan": "Bhutanese Ngultrum",
		"Brunei": "Brunei Dollar",
		"Cambodia": "Cambodian Riel",
		"China": "Chinese Renminbi",
		"Georgia": "Georgian Lari",
		"Hong Kong": "Hong Kong Dollar",
		"India": "Indian Rupee",
		"Indonesia": "Indonesian Rupiah",
		"Iran": "Iranian Rial",
		"Iraq": "Iraqi Dinar",
		"Israel": "Israeli New Shekel",
		"Japan": "Japanese Yen",
		"Jordan": "Jordanian Dinar",
		"Kazakhstan": "Kazakhstani Tenge",
		"Kyrgyzstan": "Kyrgyzstani Som",
		"Laos": "Lao Kip",
		"Lebanon": "Lebanese Pound",
		"Macau": "Macanese Pataca",
		"Malaysia": "Malaysian Ringgit",
		"Maldives": "Maldivian Rufiyaa",
		"Mongolia": "Mongolian Tögrög",
		"Myanmar": "Burmese Kyat",
		"Nepal": "Nepalese Rupee",
		"North Korea": "North Korean Won",
		"Oman": "Omani Rial",
		"Pakistan": "Pakistani Rupee",
		"Palestine": "Israeli New Shekel",
		"Philippines": "Philippine Peso",
		"Qatar": "Qatari Riyal",
		"Saudi Arabia": "Saudi Riyal",
		"Singapore": "Singapore Dollar",
		"South Korea": "South Korean Won",
		"Sri Lanka": "Sri Lanka Rupee",
		"Syria": "Syrian Pound",
		"Taiwan": "New Taiwan Dollar",
		"Tajikistan": "Tajikistani Somoni",
		"Thailand": "Thai Baht",
		"Timor-Leste": "United States Dollar",
		"Turkey": "Turkish Lira",
		"Turkmenistan": "Turkmenistan Manat",
		"United Arab Emirates": "UAE Dirham",
		"Uzbekistan": "Uzbekistani So'm",
		"Vietnam": "Vietnamese Đồng",
		"Yemen": "Yemeni Rial"
	]
	let centralAmericaCountries: [String: String] = [
		"Guatemala": "Guatemalan Quetzal",
		"Honduras": "Honduran Lempira",
		"El Salvador": "United States Dollar",
		"Costa Rica": "Costa Rican Colon",
		"Nicaragua": "Nicaraguan Córdoba",
		"Panama": "Panamanian Balboa",
		"Belize": "Belize Dollar",
	]
	let europeCountries: [String: String] = [
		"Albania": "Albanian Lek",
		"Andorra": "Euro",
		"Austria": "Euro",
		"Belarus": "Belarusian Ruble",
		"Belgium": "Euro",
		"Bosnia and Herzegovina": "Bosnia and Herzegovina Mark",
		"Bulgaria": "Bulgarian Lev",
		"Croatia": "Croatian Kuna",
		"Cyprus": "Euro",
		"Czech Republic": "Czech Koruna",
		"Denmark": "Danish Krone",
		"Estonia": "Euro",
		"Faroe Islands": "Faroese Króna",
		"Finland": "Euro",
		"France": "Euro",
		"Germany": "Euro",
		"Greece": "Euro",
		"Guernsey": "Guernsey Pound",
		"Hungary": "Hungarian Forint",
		"Iceland": "Icelandic Króna",
		"Ireland": "Euro",
		"Isle of Man": "Manx Pound",
		"Italy": "Euro",
		"Jersey": "Jersey Pound",
		"Kosovo": "Euro",
		"Latvia": "Euro",
		"Liechtenstein": "Swiss Franc",
		"Lithuania": "Euro",
		"Luxembourg": "Euro",
		"Malta": "Euro",
		"Moldova": "Moldovan Leu",
		"Monaco": "Euro",
		"Montenegro": "Euro",
		"Netherlands": "Euro",
		"North Macedonia": "Macedonian Denar",
		"Norway": "Norwegian Krone",
		"Poland": "Polish Złoty",
		"Portugal": "Euro",
		"Romania": "Romanian Leu",
		"Russia": "Russian Ruble",
		"San Marino": "Euro",
		"Serbia": "Serbian Dinar"
	]
	let northAmericaCountries: [String: String] = [
		"Canada": "Canadian Dollar",
		"United States": "United States Dollar",
		"Mexico": "Mexican Peso",
	]
	let southAmericaCountries: [String: String] = [
		"Argentina": "Argentine Peso",
		"Brazil": "Brazilian Real",
		"Chile": "Chilean Peso",
		"Colombia": "Colombian Peso",
		"Ecuador": "United States Dollar",
		"Guyana": "Guyanese Dollar",
		"Peru": "Peruvian Sol",
		"Suriname": "Surinamese Dollar",
		"Uruguay": "Uruguayan Peso",
		"Venezuela": "Venezuelan Bolívar Soberano",
		"Bolivia": "Bolivian Boliviano",
		"Paraguay": "Paraguayan Guaraní",
		"Falkland Islands": "Falkland Islands Pound",
	]
	
	var body: some View {
		
		
		
		
		
		NavigationView {
			
			ZStack {
				Color(.blue).edgesIgnoringSafeArea(.all)
				
				VStack{
					
					List{
						Section(header: Text("Currencies of Africa")
							.font(.system(size: 18, weight: .bold, design: .rounded))){
								ForEach(Array(africaCountries.keys).sorted(by: <), id: \.self) { africa in
									Text("🏁Country:  \(africa)\n\n💰Currency: \(africaCountries[africa]!)")
										.font(.system(size: 18, weight: .regular, design: .rounded))
										.padding(.all, 15)
									
								}
							}
						
						Section(header: Text("Currencies of Asia")
							.font(.system(size: 18, weight: .bold, design: .rounded))){
								ForEach(Array(asiaCountries.keys).sorted(by: <), id: \.self) { asia in
									Text("🏁Country:  \(asia)\n\n💰Currency: \(asiaCountries[asia]!)")
										.font(.system(size: 18, weight: .regular, design: .rounded))
										.padding(.all, 15)
									
								}
							}
						
						Section(header: Text("Currencies of Caribe of America")
							.font(.system(size: 18, weight: .bold, design: .rounded))){
								ForEach(Array(caribeanAmericaCountries.keys).sorted(by: <), id: \.self) { caribe in
									Text("🏁Country:  \(caribe)\n\n💰Currency: \(caribeanAmericaCountries[caribe]!)")
										.font(.system(size: 18, weight: .regular, design: .rounded))
										.padding(.all, 15)
									
								}
							}
						
						Section(header: Text("Currencies of Central America")
							.font(.system(size: 18, weight: .bold, design: .rounded))){
								ForEach(Array(centralAmericaCountries.keys).sorted(by: <), id: \.self) { CA in
									Text("🏁Country:  \(CA)\n\n💰Currency: \(centralAmericaCountries[CA]!)")
										.font(.system(size: 18, weight: .regular, design: .rounded))
										.padding(.all, 15)
									
								}
							}
						
						
						Section(header: Text("Currencies of Central America")
							.font(.system(size: 18, weight: .bold, design: .rounded))){
								ForEach(Array(europeCountries.keys).sorted(by: <), id: \.self) { EUA in
									Text("🏁Country:  \(EUA)\n\n💰Currency: \(europeCountries[EUA]!)")
										.font(.system(size: 18, weight: .regular, design: .rounded))
										.padding(.all, 15)
									
								}
							}
						
						Section(header: Text("Currencies of Central America")
							.font(.system(size: 18, weight: .bold, design: .rounded))){
								ForEach(Array(northAmericaCountries.keys).sorted(by: <), id: \.self) { NA in
									Text("🏁Country:  \(NA)\n\n💰Currency: \(northAmericaCountries[NA]!)")
										.font(.system(size: 18, weight: .regular, design: .rounded))
										.padding(.all, 15)
									
								}
							}
						
						Section(header: Text("Currencies of Central America")
							.font(.system(size: 18, weight: .bold, design: .rounded))){
								ForEach(Array(southAmericaCountries.keys).sorted(by: <), id: \.self) { SA in
									Text("🏁Country:  \(SA)\n\n💰Currency: \(southAmericaCountries[SA]!)")
										.font(.system(size: 18, weight: .regular, design: .rounded))
										.padding(.all, 15)
									
								}
							}
						
						
						
						
						
					}
					
				}
				.navigationTitle(StringsTexts().titleNavBar)
			}
		}
	}
}


