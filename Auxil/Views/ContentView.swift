//
//  ContentView.swift
//  Auxil
//
//  Created by Owen Waldron on 2021-09-28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            CalendarView().tabItem{
                Image(systemName: "calendar")
                Text("Calendar View")
            }
            DataView().tabItem{
                Image(systemName: "chart.line.uptrend.xyaxis")
                Text("Data View")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView().preferredColorScheme(.dark)
        }
    }
}
