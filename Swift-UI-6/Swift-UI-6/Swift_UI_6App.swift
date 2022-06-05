//
//  Swift_UI_6App.swift
//  Swift-UI-6
//
//  Created by Emre on 5.06.2022.
//

import SwiftUI

@main
struct Swift_UI_5App: App {
    var body: some Scene {
        WindowGroup {
            TabView{
                ContentView().tabItem{
                    HStack{
                        Image(systemName: "thermometer")
                        Text("Conversion")
                    }
                }
                MapView().tabItem{
                    HStack{
                        Image(systemName: "map")
                        Text("Map")
                    }
                }
            }.accentColor(.purple)
        }
    }
}
