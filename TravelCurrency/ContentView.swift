//
//  ContentView.swift
//  TravelCurrency
//
//  Created by Lener Gonzalez on 4/10/23.
//

import SwiftUI

struct ContentView: View {
	
	var viewModel = NetworkManager()
	
	var body: some View {
		
				TabView {
					
					countries()
						.tabItem {
							Image(systemName: "flag.2.crossed")
							Text("Countries")
								
						}
					
					ListRateCountry()
						.tabItem {
							Image(systemName: "chart.line.uptrend.xyaxis")
							Text("List Rate")
						}
					
					
					PairConversion()
						.tabItem {
							Image(systemName: "arrow.left.arrow.right")
							Text("Pair Conversion")
						}
					
					
				}
				.onAppear() {
					UITabBar.appearance().barTintColor = .whiteBlue
					
				}
	}
}

#Preview {
    ContentView()
}

