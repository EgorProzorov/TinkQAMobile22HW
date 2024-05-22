//
//  MeowleSearchCatUITests.swift
//  meowleUITests
//
//  Created by a.gorshchak on 09.04.2024.
//

import XCTest

private extension String {
    static let user = "Егор"
}

final class MeowleSignInUITests: BasePage {
    
    // MARK: - Tests
    
    // Учимся прописывать (accessibilityIdentifyer) элементу. (Поиск котика):
    func testSearchOfAcat() {
        
        openApp(isAuthorised: false)
        
        MeowleAuthPage()
            .taptextField()
            .typeTextTo(textField: String.user)
            .tapEnterButton()
        MeowleSearchCatPage().checkThatSearchScreenIsOpened()
    }
}
