//
//  ContentView.swift
//  Swift-UI-1
//
//  Created by Emre on 5.05.2022.
//

import SwiftUI

struct ContentView: View {
    @State var isTurkish : Bool = true
    var body: some View {
        VStack{
            if(isTurkish){
                Text("Merhaba, dünya!")
            }
            else{
                Text("Hello, world!")
            }
            Button(action: {
                isTurkish.toggle()
            }, label: {
                Text(isTurkish ? "Hello" : "Merhaba")
            })
        }.font(.title)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
