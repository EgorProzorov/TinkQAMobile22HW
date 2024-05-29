import Foundation
import XCTest
import Swifter


final class MeowleUnloginUITests: BasePage { // ТЕСТКЕЙС 3
    
    // MARK: - Tests
    func testUnlogin() {
        
//        setNetworkStub(for: "api/core/cats/allByLetter?limit=5",
//                       jsonFilename: "core_cats_allByLetter")

        openApp(isAuthorised: true)
        
        MeowleSearchCatPage()
            .checkThatSearchScreenIsOpened()
            .tapSettingsButton()
            
        MeowleSettingsPage()
            .checkSettingsScreenOpen()
            .clickLogut()
        MeowleAuthPage()
            .checkAuthScreenOpen()
    }
}
