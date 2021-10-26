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
                Icon(icon_root: "calendar", text: "Calendar View")
            }
            DataView().tabItem{
                Icon(icon_root: "chart.line.uptrend.xyaxis", text: "Data View")
            }
        }
    }
}

struct Icon: View {
    var icon_root: String
    var text: String
    var body: some View {
        Image(systemName: icon_root).padding(.top)
        Text(text)
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
