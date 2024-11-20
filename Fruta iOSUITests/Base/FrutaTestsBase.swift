import Foundation
import XCTest

class FrutaTestsBase: XCTestCase {
    
    var app = XCUIApplication()

    override func setUpWithError() throws {
        try super.setUpWithError()
        continueAfterFailure = true
        app.launch()
    }

    override func tearDownWithError() throws {
        try super.tearDownWithError()
    }
}
