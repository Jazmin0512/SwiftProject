import Foundation
import XCTest

enum FrutaFavoriteElements: String {
    
    case favorite = "Favorites"
    case emptyMessage = "empty-favorites-message"


    
    var element: XCUIElement {
        
        switch self {
        case .favorite:
            return XCUIApplication().buttons[self.rawValue]
        case .emptyMessage:
            return XCUIApplication().staticTexts[self.rawValue]
        }
    }
}

