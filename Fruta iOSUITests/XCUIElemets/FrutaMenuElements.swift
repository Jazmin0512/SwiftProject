
import Foundation
import XCTest

enum FrutaMenuElements: String {
    
    //Images
    case berryBlueImage = "image-berry-blue"
    case carrotChopsImage = "image-carrot-chops"
    case hulkingLemonadeImage = "image-hulking-lemonade"
    case kiwiCutieImage = "image-kiwi-cutie"
    case lemonberryImage = "image-lemonberry"
    case loveYouBerryMuchImage = "image-love-you-berry-much"
    case mangoJamboImage = "image-mango-jambo"
    case oneInAMelonImage = "image-one-in-a-melon"
    case papasPapayaImage = "image-papas-papaya"
    case peanutButterCupImage = "image-peanut-butter-cup"
    case piñaYCocoImage = "image-pina-y-coco"
    case sailorManImage = "image-sailor-man"
    case thatsASmoreImage = "image-thats-a-smore"
    case thatsBerryBananasImage = "image-thats-berry-bananas"
    case tropicalBlueImage = "image-tropical-blue"
    
    //Titles
    case berryBlueTitle = "title-berry-blue"
    case carrotChopsTitle = "title-carrot-chops"
    case hulkingLemonadeTitle = "title-hulking-lemonade"
    case kiwiCutieTitle = "title-kiwi-cutie"
    case lemonberryTitle = "title-lemonberry"
    case loveYouBerryMuchTitle = "title-love-you-berry-much"
    case mangoJamboTitle = "title-mango-jambo"
    case oneInAMelonTitle = "title-one-in-a-melon"
    case papasPapayaTitle = "title-papas-papaya"
    case peanutButterCupTitle = "title-peanut-butter-cup"
    case piñaYCocoTitle = "title-pina-y-coco"
    case sailorManTitle = "title-sailor-man"
    case thatsASmoreTitle = "title-thats-a-smore"
    case thatsBerryBananasTitle = "title-thats-berry-bananas"
    case tropicalBlueTitle = "title-tropical-blue"
    
    //Ingredients
    case berryBlueIngredients = "ingredients-berry-blue"
    case carrotChopsIngredients = "ingredients-carrot-chops"
    case hulkingLemonadeIngredients = "ingredients-hulking-lemonade"
    case kiwiCutieIngredients = "ingredients-kiwi-cutie"
    case lemonberryIngredients = "ingredients-lemonberry"
    case loveYouBerryMuchIngredients = "ingredients-love-you-berry-much"
    case mangoJamboIngredients = "ingredients-mango-jambo"
    case oneInAMelonIngredients = "ingredients-one-in-a-melon"
    case papasPapayaIngredients = "ingredients-papas-papaya"
    case peanutButterCupIngredients = "ingredients-peanut-butter-cup"
    case piñaYCocoIngredients = "ingredients-pina-y-coco"
    case sailorManIngredients = "ingredients-sailor-man"
    case thatsASmoreIngredients = "ingredients-thats-a-smore"
    case thatsBerryBananasIngredients = "ingredients-thats-berry-bananas"
    case tropicalBlueIngredients = "ingredients-tropical-blue"
    
    //Energy
    case berryBlueEnergy = "energy-berry-blue"
    case carrotChopsEnergy = "energy-carrot-chops"
    case hulkingLemonadeEnergy = "energy-hulking-lemonade"
    case kiwiCutieEnergy = "energy-kiwi-cutie"
    case lemonberryEnergy = "energy-lemonberry"
    case loveYouBerryMuchEnergy = "energy-love-you-berry-much"
    case mangoJamboEnergy = "energy-mango-jambo"
    case oneInAMelonEnergy = "energy-one-in-a-melon"
    case papasPapayaEnergy = "energy-papas-papaya"
    case peanutButterCupEnergy = "energy-peanut-butter-cup"
    case piñaYCocoEnergy = "energy-pina-y-coco"
    case sailorManEnergy = "energy-sailor-man"
    case thatsASmoreEnergy = "energy-thats-a-smore"
    case thatsBerryBananasEnergy = "energy-thats-berry-bananas"
    case tropicalBlueEnergy = "energy-tropical-blue"

    //SearchBar
    case search = "Search"

    
    var element: XCUIElement {
        
        switch self {
        case .berryBlueImage, .carrotChopsImage, .hulkingLemonadeImage, .kiwiCutieImage, .lemonberryImage, .loveYouBerryMuchImage, .mangoJamboImage, .oneInAMelonImage, .papasPapayaImage, .peanutButterCupImage, .piñaYCocoImage, .sailorManImage, .thatsASmoreImage, .thatsBerryBananasImage, .tropicalBlueImage:
            return XCUIApplication().images[self.rawValue]
        case .berryBlueTitle, .carrotChopsTitle, .hulkingLemonadeTitle, .kiwiCutieTitle, .lemonberryTitle, .loveYouBerryMuchTitle, .mangoJamboTitle, .oneInAMelonTitle, .papasPapayaTitle, .peanutButterCupTitle, .piñaYCocoTitle, .sailorManTitle, .thatsASmoreTitle, .thatsBerryBananasTitle, .tropicalBlueTitle, .berryBlueIngredients, .carrotChopsIngredients, .hulkingLemonadeIngredients, .kiwiCutieIngredients, .lemonberryIngredients, .loveYouBerryMuchIngredients, .mangoJamboIngredients, .oneInAMelonIngredients, .papasPapayaIngredients, .peanutButterCupIngredients, .piñaYCocoIngredients, .sailorManIngredients, .thatsASmoreIngredients, .thatsBerryBananasIngredients, .tropicalBlueIngredients, .berryBlueEnergy, .carrotChopsEnergy, .hulkingLemonadeEnergy, .kiwiCutieEnergy, .lemonberryEnergy, .loveYouBerryMuchEnergy, .mangoJamboEnergy, .oneInAMelonEnergy, .papasPapayaEnergy, .peanutButterCupEnergy, .piñaYCocoEnergy, .sailorManEnergy, .thatsASmoreEnergy, .thatsBerryBananasEnergy, .tropicalBlueEnergy:
            return XCUIApplication().staticTexts[self.rawValue]
        case .search:
            return XCUIApplication().searchFields[self.rawValue]
        }
    }
}
