//
//  Fruta_iOSUITests.swift
//  Fruta iOSUITests
//
//  Created by Hugo Landines on 01/10/24.
//  Copyright © 2024 Apple. All rights reserved.
//

import XCTest

final class Fruta_iOSUITests: FrutaTestsBase {

    @MainActor
    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    @MainActor
    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
    
}
