//
//  ContentView.swift
//  ActionsDemo
//
//  Created by Vincent Frascello on 2/11/2023.
//

import SwiftUI

struct ContentView: View {
  
  @State var temperature: String = ""
  
  @ObservedObject var converter: Converter = Converter()
    var body: some View {
      VStack(alignment: .leading, spacing: 8) {
        Image(systemName: "thermometer")
            .imageScale(.large)
            .foregroundStyle(.tint)
          TextField("Enter Temperature in Celsius", text: $temperature)
          Button("Convert to Fahrenheit") {
            if let tempInDouble = Double(temperature) {
              converter.convert(tempInDouble)
            }
          }
          if let result = converter.result {
            Text("The temperature is \(result, specifier: "%.2f") °F")
          }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
