//
//  ContentView.swift
//  Swift-UI-4
//
//  Created by Emre on 16.05.2022.
//

import SwiftUI

struct ContentView: View {
    @State var fahrenheitValue : String = ""
    let numberFormatter : NumberFormatter = {
        let numberFormattter = NumberFormatter()
        numberFormattter.numberStyle = .decimal
        numberFormattter.minimumFractionDigits = 0
        numberFormattter.maximumFractionDigits = 2
        return numberFormattter
    }()
    func convertToCelsius()->String {
        if let value = Double(fahrenheitValue){
            let fahrenheit = Measurement<UnitTemperature>(value:value,unit:.fahrenheit)
            let celsiusValue = fahrenheit.converted(to: .celsius)
            return  numberFormatter.string(from: NSNumber(value:celsiusValue.value)) ?? "???"
        }
        else{
            return "???"
        }
    }
    var body: some View {
        VStack{
            TextField("value",text:$fahrenheitValue)
                .font(Font.system(size:64))
                .multilineTextAlignment(.center)
                .keyboardType(.decimalPad)
            Text("Fahrenheit")
            Text("Is Actualy")
            Text(convertToCelsius()).font(Font.system(size:64))
            Text("degress Celcius")
            Spacer()
        }.font(.title).foregroundColor(.orange)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
