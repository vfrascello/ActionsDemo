//
//  ActionsDemoTests.swift
//  ActionsDemoTests
//
//  Created by Vincent Frascello on 2/11/2023.
//

import XCTest
@testable import ActionsDemo

final class ActionsDemoTests: XCTestCase {
  private var converter = Converter()
    func testConvert() throws {
      let celsiusValue: Double = 200
      converter.convert(celsiusValue)
      XCTAssertEqual(converter.result, 392.00)
      
      let celsiusValueTwo: Double = 0
      converter.convert(celsiusValueTwo)
      XCTAssertEqual(converter.result, 32.00)
      
      let celsiusValueThree: Double = 100
      converter.convert(celsiusValueThree)
      XCTAssertEqual(converter.result, 212.00)
      
//      let celsiusValueFour: Double = 100
//      converter.convert(celsiusValueFour)
//      XCTAssertEqual(converter.result, 0.00)
    }
}
