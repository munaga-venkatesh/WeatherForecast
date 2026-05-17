//
//  ContentView.swift
//  WeatherForecast
//
//  Created by Venkatesh Munaga on 17/05/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ScrollView([.horizontal], showsIndicators: false) {
                HStack {
                    DayFroecastView(day: "Mon", isRainy: false, high: 70, low: 50)
                    
                    DayFroecastView(day: "Tue", isRainy: true, high: 60, low: 40)
                    
                    DayFroecastView(day: "Wed", isRainy: false, high: 75, low: 55)
                    
                    DayFroecastView(day: "Thu", isRainy: true, high: 65, low: 45)
                    
                    
                }
            }
            .defaultScrollAnchor(.leading)
            
            Spacer()
        }
    }
}

struct DayFroecastView: View {
    let day: String
    let isRainy: Bool
    let high: Int
    let low: Int
    
    var iconName: String {
        isRainy ? "cloud.rain.fill" : "sun.max.fill"
    }
    var iconColor: Color {
        isRainy ? .blue : .yellow
    }
    
    var body: some View {
        VStack {
            Text(day)
                .font(.headline)
            Image(systemName: iconName)
                .foregroundStyle(iconColor)
                .font(.largeTitle)
                .padding(5)
            Text("High: \(high)")
                .fontWeight(.semibold)
            Text("Low: \(low)")
                .fontWeight(.semibold)
                .foregroundStyle(.secondary)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
