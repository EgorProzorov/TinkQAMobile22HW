import XCTest

private extension String {
    static let user = "Егор"
}

final class MeowleSignInUITests: BasePage { // ТЕСТ КЕЙС 1
    
    func testSearchOfAcat() {
        
        openApp(isAuthorised: false)
        
        MeowleAuthPage()
            .taptextField()
            .typeTextTo(textField: String.user)
            .tapEnterButton()
        MeowleSearchCatPage().checkThatSearchScreenIsOpened()
    }
}
