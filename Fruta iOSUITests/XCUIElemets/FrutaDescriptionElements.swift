
import Foundation
import XCTest

enum FrutaDescriptionElements: String {
    
    case berryBlueDescription = "description-berry-blue"
    case carrotChopsDescription = "description-carrot-chops"
    case hulkingLemonadeDescription = "description-hulking-lemonade"
    case kiwiCutieDescription = "description-kiwi-cutie"
    case lemonberryDescription = "description-lemonberry"
    case loveYouBerryMuchDescription = "description-love-you-berry-much"
    case mangoJamboDescription = "description-mango-jambo"
    case oneInAMelonDescription = "description-one-in-a-melon"
    case papasPapayaDescription = "description-papas-papaya"
    case peanutButterCupDescription = "description-peanut-butter-cup"
    case piñaYCocoDescription = "description-pina-y-coco"
    case sailorManDescription = "description-sailor-man"
    case thatsASmoreDescription = "description-thats-a-smore"
    case thatsBerryBananasDescription = "description-thats-berry-bananas"
    case tropicalBlueDescription = "description-tropical-blue"

    
    case berryBlueFavorite = "favorite-button--berry-blue"
    case carrotChopsFavorite = "favorite-button-carrot-chops"
    case hulkingLemonadeFavorite = "favorite-button-hulking-lemonade"
    case kiwiCutieFavorite = "favorite-button-kiwi-cutie"
    case lemonberryFavorite = "favorite-button-lemonberry"
    case loveYouBerryMuchFavorite = "favorite-button-love-you-berry-much"
    case mangoJamboFavorite = "favorite-button-mango-jambo"
    case oneInAMelonFavorite = "favorite-button-one-in-a-melon"
    case papasPapayaFavorite = "favorite-button-papas-papaya"
    case peanutButterCupFavorite = "favorite-button-peanut-butter-cup"
    case piñaYCocoFavorite = "favorite-button-pina-y-coco"
    case sailorManFavorite = "favorite-button-sailor-man"
    case thatsASmoreFavorite = "favorite-button-thats-a-smore"
    case thatsBerryBananasFavorite = "favorite-button-thats-berry-bananas"
    case tropicalBlueFavorite = "favorite-button-tropical-blue"


    
    var element: XCUIElement {
        
        switch self {
        case .berryBlueFavorite, .carrotChopsFavorite, .hulkingLemonadeFavorite, .kiwiCutieFavorite, .lemonberryFavorite,  .loveYouBerryMuchFavorite, .mangoJamboFavorite, .oneInAMelonFavorite, .papasPapayaFavorite, .peanutButterCupFavorite, .piñaYCocoFavorite, .sailorManFavorite, .thatsASmoreFavorite, .thatsBerryBananasFavorite, .tropicalBlueFavorite:
            return XCUIApplication().buttons[self.rawValue]
        case .berryBlueDescription, .carrotChopsDescription, .hulkingLemonadeDescription, .kiwiCutieDescription, .lemonberryDescription,  .loveYouBerryMuchDescription, .mangoJamboDescription, .oneInAMelonDescription, .papasPapayaDescription, .peanutButterCupDescription, .piñaYCocoDescription, .sailorManDescription, .thatsASmoreDescription, .thatsBerryBananasDescription, .tropicalBlueDescription:
            return XCUIApplication().staticTexts[self.rawValue]
        }
    }
}

