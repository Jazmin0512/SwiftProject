import Foundation
import XCTest

extension FrutaTestsBase {
    
    func smoothieImageIsPresent2(smoothieImageElement: XCUIElement) {
        XCTContext.runActivity(named: "Smoothie image is present") { _ in
            XCTAssertTrue(smoothieImageElement.exists, "Smoothie image should exists")
        }
    }
    
    func smoothieTitleIsCorrect2(smoothieName: String) {
        XCTContext.runActivity(named: "Smoothie title is correct") { _ in
            if let (titleElement, smoothieTitle) = getTitleInfo(for: smoothieName) {
                XCTAssertTrue(titleElement.exists)
                XCTAssertEqual(titleElement.label, smoothieTitle, "\(smoothieName) smoothie title should match")
            }
        }
    }
    
    func getTitleInfo(for smoothieName: String) -> (titleElement: XCUIElement, smoothieTitle: String)? {
        guard let smoothie = smoothiesDictionary[smoothieName] else {
            return nil
        }
        return (smoothie.titleElement, smoothie.smoothieTitle)
    }
    
    func smoothieIngredientsAreCorrect2(smoothieName: String) {
        XCTContext.runActivity(named: "Smoothie ingredients are correct") { _ in
            if let (ingredientsElement, smoothieIngredients) = getIngredientsInfo(for: smoothieName) {
                XCTAssertTrue(ingredientsElement.exists)
                XCTAssertEqual(ingredientsElement.label, smoothieIngredients, "Text match")
            }
        }
    }
    
    func getIngredientsInfo(for smoothieName: String) -> (ingredientsElement: XCUIElement, smoothieIngredients: String)? {
        guard let smoothie = smoothiesDictionary[smoothieName] else {
            return nil
        }
        return (smoothie.ingredientsElement, smoothie.smoothieIngredients)
    }
    
    func smoothieCalorieInformationIsCorrect2(smoothieName: String) {
        XCTContext.runActivity(named: "Smoothie energy info is correct") { _ in
            if let (energyElement, smoothieEnergyInfo) = getIngredientsInfo(for: smoothieName) {
                XCTAssertTrue(energyElement.exists)
                XCTAssertEqual(energyElement.label, smoothieEnergyInfo, "Text match")
            }
        }
    }
    
    func getEnergyInfo(for smoothieName: String) -> (energyElement: XCUIElement, smoothieEnergyInfo: String)? {
        guard let smoothie = smoothiesDictionary[smoothieName] else {
            return nil
        }
        return (smoothie.energyElement, smoothie.smoothieEnergyInfo)
    }
    
    func scrollDownToElement(element : XCUIElement, maxRetries : Int) {
        let sidebarCollectionView = app.collectionViews["Sidebar"]
        for _ in 0..<maxRetries {
            if element.exists {
                break
            }
            sidebarCollectionView.swipeUp(velocity: XCUIGestureVelocity.slow)
        }
    }
    
    func descriptionMatchSmoothie2(smoothieName: String) {
        XCTContext.runActivity(named: "Verify \(smoothieName) smoothie description is correct") { _ in
            if let (descriptionElement, smoothieDescription) = getDescriptionInfo(for: smoothieName) {
                descriptionElement.tap()
                XCTAssertEqual(descriptionElement.label, smoothieDescription, "Description text should match")
                tapOnMenuBackButton2()
            }
        }
    }
    
    func getDescriptionInfo(for smoothieName: String) -> (descriptionElement: XCUIElement, smoothieDescription: String)? {
        guard let smoothie = smoothiesDictionary[smoothieName] else {
            return nil
        }
        return (smoothie.descriptionElement, smoothie.smoothieDescription)
    }
    
    func tapOnMenuBackButton2() {
        XCTContext.runActivity(named: "Navigate back to Menu") { _ in
            let lastMenuButton = app.buttons.matching(identifier: "Menu").element(boundBy: app.buttons.matching(identifier: "Menu").count - 1)
            lastMenuButton.tap()
        }
    }
    
    func verifyFavoritesEmptyMessage2() {
        XCTContext.runActivity(named: "Verify empty message on Favorites tab") { _ in
            FrutaFavoriteElements.favorite.element.tap()
            XCTAssertTrue(FrutaFavoriteElements.emptyMessage.element.exists)
            XCTAssertEqual(FrutaFavoriteElements.emptyMessage.element.label, "Add some smoothies to your favorites!", "Text match")
        }
    }
    
    func verifySmoothieIsAddedToFavorites(smoothieName: String) {
        XCTContext.runActivity(named: "Verify \(smoothieName) Smoothie is added to favorites") { _ in
            // Obtener el smoothie correspondiente
            guard let smoothie = smoothies.first(where: { $0.name == smoothieName }) else {
                XCTFail("Smoothie not found")
                return
            }
            scrollDownToElement(element: smoothie.titleElement, maxRetries: 3)
            smoothie.titleElement.tap()
            smoothie.favoriteElement.tap()
            tapOnMenuBackButton2()
            FrutaFavoriteElements.favorite.element.tap()
            
            smoothieTitleIsCorrect2(smoothieName: smoothieName)
        }
    }
    
    func searchForSmoothieFlavor2(flavor: String) {
        XCTContext.runActivity(named: "Verify search for \(flavor) works as expected") { _ in
            FrutaMenuElements.search.element.tap()
            FrutaMenuElements.search.element.typeText(flavor)
        }
    }
    
    func verifySmoothiesPresent(for flavor: String) {
        XCTContext.runActivity(named: "Verify all smoothies containing '\(flavor)' are present") { _ in
            let matchingSmoothies = smoothies.filter { smoothie in
                smoothie.smoothieIngredients.lowercased().contains(flavor.lowercased())
            }
            var totalSmoothiesMatching = 0
            for smoothie in matchingSmoothies {
                smoothieTitleIsCorrect2(smoothieName: smoothie.name)
                totalSmoothiesMatching += 1
            }
            
            XCTAssertEqual(matchingSmoothies.count, totalSmoothiesMatching)
        }
    }
}
