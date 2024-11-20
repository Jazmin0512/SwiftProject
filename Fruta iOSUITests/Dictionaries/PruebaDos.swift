import XCTest

struct Smoothie {
    let name: String
    let image: XCUIElement
    let titleElement: XCUIElement
    let smoothieTitle: String
    let ingredientsElement: XCUIElement
    let smoothieIngredients: String
    let energyElement: XCUIElement
    let smoothieEnergyInfo: String
    let descriptionElement: XCUIElement
    let smoothieDescription: String
    let favoriteElement: XCUIElement
}
    
    let smoothies: [Smoothie] = [
            Smoothie(name: "berryBlue",
                     image: FrutaMenuElements.berryBlueImage.element,
                     titleElement: FrutaMenuElements.berryBlueTitle.element,
                     smoothieTitle: "Berry Blue",
                     ingredientsElement: FrutaMenuElements.berryBlueIngredients.element,
                     smoothieIngredients: "Ingredients: Orange, blueberry, and avocado.",
                     energyElement: FrutaMenuElements.berryBlueEnergy.element,
                     smoothieEnergyInfo: "520 kilocalories",
                     descriptionElement: FrutaDescriptionElements.berryBlueDescription.element,
                     smoothieDescription: "Filling and refreshing, this smoothie will fill you with joy!",
                     favoriteElement: FrutaDescriptionElements.berryBlueFavorite.element),
            Smoothie(name: "carrotChops",
                     image: FrutaMenuElements.carrotChopsImage.element,
                     titleElement: FrutaMenuElements.carrotChopsTitle.element,
                     smoothieTitle: "Carrot Chops",
                     ingredientsElement: FrutaMenuElements.carrotChopsIngredients.element,
                     smoothieIngredients: "Ingredients: Orange, carrot, and mango.",
                     energyElement: FrutaMenuElements.carrotChopsEnergy.element,
                     smoothieEnergyInfo: "230 kilocalories",
                     descriptionElement: FrutaDescriptionElements.carrotChopsDescription.element,
                     smoothieDescription: "Packed with vitamin A and C, Carrot Chops is a great way to start your day!",
                     favoriteElement: FrutaDescriptionElements.carrotChopsFavorite.element),
            Smoothie(name: "hulkingLemonade",
                     image: FrutaMenuElements.hulkingLemonadeImage.element,
                     titleElement: FrutaMenuElements.hulkingLemonadeTitle.element,
                     smoothieTitle: "Hulking Lemonade",
                     ingredientsElement: FrutaMenuElements.hulkingLemonadeIngredients.element,
                     smoothieIngredients: "Ingredients: Lemon, spinach, and avocado.",
                     energyElement: FrutaMenuElements.hulkingLemonadeEnergy.element,
                     smoothieEnergyInfo: "170 kilocalories",
                     descriptionElement: FrutaDescriptionElements.hulkingLemonadeDescription.element,
                     smoothieDescription: "This is not just any lemonade. It will give you powers you'll struggle to control!",
                     favoriteElement: FrutaDescriptionElements.hulkingLemonadeFavorite.element),
            Smoothie(name: "kiwiCutie",
                     image: FrutaMenuElements.kiwiCutieImage.element,
                     titleElement: FrutaMenuElements.kiwiCutieTitle.element,
                     smoothieTitle: "Kiwi Cutie",
                     ingredientsElement: FrutaMenuElements.kiwiCutieIngredients.element,
                     smoothieIngredients: "Ingredients: Kiwi, orange, and spinach.",
                     energyElement: FrutaMenuElements.kiwiCutieEnergy.element,
                     smoothieEnergyInfo: "210 kilocalories",
                     descriptionElement: FrutaDescriptionElements.kiwiCutieDescription.element,
                     smoothieDescription: "Kiwi Cutie is beautiful inside and out! Packed with nutrients to start your day!",
                     favoriteElement: FrutaDescriptionElements.kiwiCutieFavorite.element),
            Smoothie(name: "lemonberry",
                     image: FrutaMenuElements.lemonberryImage.element,
                        titleElement: FrutaMenuElements.lemonberryTitle.element,
                     smoothieTitle: "Lemonberry",
                     ingredientsElement: FrutaMenuElements.lemonberryIngredients.element,
                     smoothieIngredients: "Ingredients: Raspberry, strawberry, and lemon.",
                     energyElement: FrutaMenuElements.lemonberryEnergy.element,
                     smoothieEnergyInfo: "140 kilocalories",
                     descriptionElement: FrutaDescriptionElements.lemonberryDescription.element,
                     smoothieDescription: "A refreshing blend that's a real kick!",
                     favoriteElement: FrutaDescriptionElements.lemonberryFavorite.element),
            Smoothie(name: "loveYouBerryMuch",
                     image: FrutaMenuElements.loveYouBerryMuchImage.element,
                     titleElement: FrutaMenuElements.loveYouBerryMuchTitle.element,
                     smoothieTitle: "Love You Berry Much",
                     ingredientsElement: FrutaMenuElements.loveYouBerryMuchIngredients.element,
                     smoothieIngredients: "Ingredients: Strawberry, blueberry, and raspberry.",
                     energyElement: FrutaMenuElements.loveYouBerryMuchEnergy.element,
                     smoothieEnergyInfo: "210 kilocalories",
                     descriptionElement: FrutaDescriptionElements.loveYouBerryMuchDescription.element,
                     smoothieDescription: "If you love berries berry berry much, you will love this one!",
                     favoriteElement: FrutaDescriptionElements.loveYouBerryMuchFavorite.element),
            Smoothie(name: "mangoJambo",
                     image: FrutaMenuElements.mangoJamboImage.element,
                     titleElement: FrutaMenuElements.mangoJamboTitle.element,
                     smoothieTitle: "Mango Jambo",
                     ingredientsElement: FrutaMenuElements.mangoJamboIngredients.element,
                     smoothieIngredients: "Ingredients: Mango and pineapple.",
                     energyElement: FrutaMenuElements.mangoJamboEnergy.element,
                     smoothieEnergyInfo: "140 kilocalories",
                     descriptionElement: FrutaDescriptionElements.mangoJamboDescription.element,
                     smoothieDescription: "Dance around with this delicious tropical blend!",
                     favoriteElement: FrutaDescriptionElements.mangoJamboFavorite.element),
            Smoothie(name: "oneInAMelon",
                     image: FrutaMenuElements.oneInAMelonImage.element,
                     titleElement: FrutaMenuElements.oneInAMelonTitle.element,
                     smoothieTitle: "One in a Melon",
                     ingredientsElement: FrutaMenuElements.oneInAMelonIngredients.element,
                     smoothieIngredients: "Ingredients: Watermelon and raspberry.",
                     energyElement: FrutaMenuElements.oneInAMelonEnergy.element,
                     smoothieEnergyInfo: "130 kilocalories",
                     descriptionElement: FrutaDescriptionElements.oneInAMelonDescription.element,
                     smoothieDescription: "Feel special this summer with the coolest drink in our menu!",
                     favoriteElement: FrutaDescriptionElements.oneInAMelonFavorite.element),
            Smoothie(name: "papasPapaya",
                     image: FrutaMenuElements.papasPapayaImage.element,
                     titleElement: FrutaMenuElements.papasPapayaTitle.element,
                     smoothieTitle: "Papa's Papaya",
                     ingredientsElement: FrutaMenuElements.papasPapayaIngredients.element,
                     smoothieIngredients: "Ingredients: Orange, mango, and papaya.",
                     energyElement: FrutaMenuElements.papasPapayaEnergy.element,
                     smoothieEnergyInfo: "210 kilocalories",
                     descriptionElement: FrutaDescriptionElements.papasPapayaDescription.element,
                     smoothieDescription: "Papa would be proud of you if he saw you drinking this!",
                     favoriteElement: FrutaDescriptionElements.papasPapayaFavorite.element),
            Smoothie(name: "peanutButterCup",
                     image: FrutaMenuElements.peanutButterCupImage.element,
                     titleElement: FrutaMenuElements.peanutButterCupTitle.element,
                     smoothieTitle: "Peanut Butter Cup",
                     ingredientsElement: FrutaMenuElements.peanutButterCupIngredients.element,
                     smoothieIngredients: "Ingredients: Almond Milk, banana, chocolate, and peanut butter.",
                     energyElement: FrutaMenuElements.peanutButterCupEnergy.element,
                     smoothieEnergyInfo: "460 kilocalories",
                     descriptionElement: FrutaDescriptionElements.peanutButterCupDescription.element,
                     smoothieDescription: "Ever wondered what it was like to drink a peanut butter cup? Wonder no more!",
                     favoriteElement: FrutaDescriptionElements.peanutButterCupFavorite.element),
            Smoothie(name: "piñaYCoco",
                     image: FrutaMenuElements.piñaYCocoImage.element,
                     titleElement: FrutaMenuElements.piñaYCocoTitle.element,
                     smoothieTitle: "Piña y Coco",
                     ingredientsElement: FrutaMenuElements.piñaYCocoIngredients.element,
                     smoothieIngredients: "Ingredients: Pineapple, almond milk, and coconut.",
                     energyElement: FrutaMenuElements.piñaYCocoEnergy.element,
                     smoothieEnergyInfo: "320 kilocalories",
                     descriptionElement: FrutaDescriptionElements.piñaYCocoDescription.element,
                     smoothieDescription: "Enjoy the tropical flavors of coconut and pineapple!",
                     favoriteElement: FrutaDescriptionElements.piñaYCocoFavorite.element),
            Smoothie(name: "sailorMan",
                     image: FrutaMenuElements.sailorManImage.element,
                     titleElement: FrutaMenuElements.sailorManTitle.element,
                     smoothieTitle: "Sailor Man",
                     ingredientsElement: FrutaMenuElements.sailorManIngredients.element,
                     smoothieIngredients: "Ingredients: Orange and spinach.",
                     energyElement: FrutaMenuElements.sailorManEnergy.element,
                     smoothieEnergyInfo: "170 kilocalories",
                     descriptionElement: FrutaDescriptionElements.sailorManDescription.element,
                     smoothieDescription: "Get strong with this delicious spinach smoothie!",
                     favoriteElement: FrutaDescriptionElements.sailorManFavorite.element),
            Smoothie(name: "thatsASmore",
                     image: FrutaMenuElements.thatsASmoreImage.element,
                     titleElement: FrutaMenuElements.thatsASmoreTitle.element,
                     smoothieTitle: "That's a Smore!",
                     ingredientsElement: FrutaMenuElements.thatsASmoreIngredients.element,
                     smoothieIngredients: "Ingredients: Almond Milk, coconut, and chocolate.",
                     energyElement: FrutaMenuElements.thatsASmoreEnergy.element,
                     smoothieEnergyInfo: "240 kilocalories",
                     descriptionElement: FrutaDescriptionElements.thatsASmoreDescription.element,
                     smoothieDescription: "When the world seems to rock like you've had too much choc, that's a smore!",
                     favoriteElement: FrutaDescriptionElements.thatsASmoreFavorite.element),
            Smoothie(name: "thatsBerryBananas",
                     image: FrutaMenuElements.thatsBerryBananasImage.element,
                     titleElement: FrutaMenuElements.thatsBerryBananasTitle.element,
                     smoothieTitle: "That's Berry Bananas!",
                     ingredientsElement: FrutaMenuElements.thatsBerryBananasIngredients.element,
                     smoothieIngredients: "Ingredients: Almond Milk, banana, and strawberry.",
                     energyElement: FrutaMenuElements.thatsBerryBananasEnergy.element,
                     smoothieEnergyInfo: "580 kilocalories",
                     descriptionElement: FrutaDescriptionElements.thatsBerryBananasDescription.element,
                     smoothieDescription: "You'll go crazy with this classic!",
                     favoriteElement: FrutaDescriptionElements.thatsBerryBananasFavorite.element),
            Smoothie(name: "tropicalBlue",
                     image: FrutaMenuElements.tropicalBlueImage.element,
                     titleElement: FrutaMenuElements.tropicalBlueTitle.element,
                     smoothieTitle: "Tropical Blue",
                     ingredientsElement: FrutaMenuElements.tropicalBlueIngredients.element,
                     smoothieIngredients: "Ingredients: Almond Milk, banana, blueberry, and mango.",
                     energyElement: FrutaMenuElements.tropicalBlueEnergy.element,
                     smoothieEnergyInfo: "490 kilocalories",
                     descriptionElement: FrutaDescriptionElements.tropicalBlueDescription.element,
                     smoothieDescription: "A delicious blend of tropical fruits and blueberries will have you sambaing around like you never knew you could!",
                     favoriteElement: FrutaDescriptionElements.tropicalBlueFavorite.element)
        ]

let smoothiesDictionary = Dictionary(uniqueKeysWithValues: smoothies.map { ($0.name, $0) })
