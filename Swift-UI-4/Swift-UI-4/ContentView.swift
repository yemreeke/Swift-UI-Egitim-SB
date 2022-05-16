//
//  ContentView.swift
//  Swift-UI-4
//
//  Created by Emre on 16.05.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("212").font(Font.system(size:64))
            Text("Fahrenheit")
            Text("Is Actualy")
            Text("100").font(Font.system(size:64))
            Text("degress Celcius")
            Spacer()
        }.font(.title)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
