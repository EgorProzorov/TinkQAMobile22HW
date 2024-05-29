import Foundation
import XCTest
import Swifter

final class MeowleAllNamesUITests: BasePage { // ТЕСТКЕЙС 2
    
    // MARK: - Tests
    func testAllCats() {
        
        setNetworkStub(for: "api/core/cats/allByLetter?limit=5",
                       jsonFilename: "core_cats_allByLetter")
        
        openApp(isAuthorised: true)
        
        MeowleSearchCatPage()
            .tapAllCats()
            .checkThatSearchScreenIsOpened()
    }
}
