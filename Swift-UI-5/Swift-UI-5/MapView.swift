//
//  SwiftUIView.swift
//  Swift-UI-5
//
//  Created by Emre on 17.05.2022.
//

import SwiftUI
import MapKit
struct MapView: View {
    @State var selectedIndex = 0
    static var regions : [MKCoordinateRegion] = [
        MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 41.0, longitude: 29.0), span: MKCoordinateSpan(latitudeDelta: 5.0, longitudeDelta: 5.0))
        ,
        MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.589865, longitude: -0.118092), span: MKCoordinateSpan(latitudeDelta: 5.0, longitudeDelta: 5.0))
        
    ]
    @State var region = regions[0]
    
    var body: some View {
        Map(coordinateRegion:$region)
            .edgesIgnoringSafeArea(.top)
            .overlay(
                VStack{
                Picker("picker",selection: $selectedIndex,content:{
                    Text("İstanbul").tag(0)
                    Text("London").tag(1)
                })
                .pickerStyle(SegmentedPickerStyle())
                .padding()
                .onChange(of: selectedIndex) { newValue in
                    self.region = MapView.regions[selectedIndex]
                }
                Spacer()
                }
            )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
