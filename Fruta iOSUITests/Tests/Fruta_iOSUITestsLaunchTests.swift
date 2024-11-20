//
//  Fruta_iOSUITestsLaunchTests.swift
//  Fruta iOSUITests
//
//  Created by Hugo Landines on 01/10/24.
//  Copyright © 2024 Apple. All rights reserved.
//

import XCTest
final class Fruta_iOSUITestsLaunchTests: FrutaTestsBase {

    @MainActor
    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
    
    
    @MainActor
    func testAllSmoothiesAreShownNew() throws {
        var numOfSmoothies = 0
        for smoothie in smoothies {
            scrollDownToElement(element: smoothie.titleElement, maxRetries: 3)
            smoothieImageIsPresent2(smoothieImageElement: smoothie.image)
            smoothieTitleIsCorrect2(smoothieName: smoothie.name)
            smoothieIngredientsAreCorrect2(smoothieName: smoothie.name)
            smoothieCalorieInformationIsCorrect2(smoothieName: smoothie.name)
            numOfSmoothies += 1
        }
        XCTAssertEqual(numOfSmoothies, 15)
    }
    
    @MainActor
    func testDescriptionMatch2() throws {
        FrutaMenuElements.hulkingLemonadeTitle.element.tap()
        descriptionMatchSmoothie2(smoothieName: "hulkingLemonade")
        scrollDownToElement(element: FrutaMenuElements.tropicalBlueTitle.element, maxRetries: 3)
        FrutaMenuElements.tropicalBlueTitle.element.tap()
        descriptionMatchSmoothie2(smoothieName: "tropicalBlue")
    }
    
    @MainActor
    func testFavoriteSoothie2() throws {
        verifyFavoritesEmptyMessage2()
        tapOnMenuBackButton2()
        verifySmoothieIsAddedToFavorites(smoothieName: "thatsBerryBananas")
    }
    
    @MainActor
    func testSearchFunctionality() {
        searchForSmoothieFlavor2(flavor: "Orange")
        verifySmoothiesPresent(for: "Orange")
    }
}


