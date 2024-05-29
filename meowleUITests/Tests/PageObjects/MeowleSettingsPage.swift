//
//  MeowleAuthPage.swift
//  MeowleUITests
//
//  Created by a.gorshchak on 09.04.2024.
//

import XCTest

private extension String {

    static let settingsScreenIdentifier = "settingsScreenViewController"
    static let authScreenIdentifier = "authScreenViewController"
    static let logoutIdentifyer = "logOutFromApplication"
}

final class MeowleSettingsPage: BasePage {
    
    // MARK: - Elements
    
    private lazy var settingsScreenTitle = app.otherElements[.settingsScreenIdentifier]
    private lazy var authScreenTitle = app.otherElements[.authScreenIdentifier]
    private lazy var logoutButton = app.buttons[.logoutIdentifyer]
    
    
    // MARK: - Actions

    @discardableResult
    func clickLogut() -> MeowleAuthPage{
        logoutButton.tap()
        return MeowleAuthPage()
    }
    
    // MARK: - Asserts
    
    @discardableResult
    func checkSettingsScreenOpen() -> MeowleSettingsPage{
        XCTAssertTrue(settingsScreenTitle.waitForExistence(timeout: .timeout))
        return self
    }

//    @discardableResult
//    func checkAuthScreenOpen() -> MeowleAuthPage{
//        XCTAssertTrue(authScreenTitle.waitForExistence(timeout: .timeout))
//        return MeowleAuthPage()
//    }

}
