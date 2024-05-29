import Foundation
import XCTest
import Swifter

private extension String {
    static let cat1 = "Кот №1"
    static let cat2 = "Кот №2"
    static let cat3 = "Кот №3"
}

final class MeowleAllNamesUITests: BasePage { // ТЕСТКЕЙС 2
    
    // MARK: - Tests
    func testAllCats() {
        
        setNetworkStub(for: "api/core/cats/allByLetter?limit=5",
                       jsonFilename: "core_cats_allByLetter")

        openApp(isAuthorised: true)
        
        MeowleSearchCatPage()
            .tapAllCats()
            .checkThreeCats(cat1: .cat1, cat2: .cat2, cat3: .cat3)
            
    }
}
