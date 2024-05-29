import XCTest

private extension String {
    static let catBaton = "Батон"
    static let nameOfCatAccordingSearchResults = "Батон ♂"
}

final class MeowleLikeUITests: BasePage {  // ТЕСТ КЕЙС 4
    
    // MARK: - Tests
    
    func testSearchOfAcat() {
        
        openApp(isAuthorised: true)
        
        MeowleSearchCatPage()
            .checkThatSearchScreenIsOpened()
            .tapSearchField()
            .typeTextTo(textField: .catBaton)
            .tapSearchButtonWithAccessibilityIdentifyer()
            .assertExistanceNameOf(cat: .catBaton)
            .tapCat(name: .catBaton)
            .assertExistanceNameOf(cat: .nameOfCatAccordingSearchResults)
        MeowleCatDetailsPage()
            .clickLike()
            .assertLikes()
    }

}
