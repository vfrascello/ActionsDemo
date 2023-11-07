//
//  Converter.swift
//  ActionsDemo
//
//  Created by Vincent Frascello on 2/11/2023.
//

import Foundation

final class Converter: ObservableObject {
  
  @Published var result: Double?
  
  func convert(_ valueInCelsius: Double) {
    result = valueInCelsius * 9 / 5 + 32
  }
}
