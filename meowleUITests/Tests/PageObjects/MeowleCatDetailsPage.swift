//
//  AddANewCatPage.swift
//  meowleUITests
//
//  Created by a.gorshchak on 14.04.2024.
//

import XCTest

private extension String {
    static let likeLable = "likeCatButton"

}

final class MeowleCatDetailsPage: BasePage {
    
    // MARK: - Elements
    
    private lazy var likeCatButton = app.buttons[.likeLable]

    
    // MARK: - Actions
    @discardableResult
    func clickLike() -> MeowleCatDetailsPage{
        likeCatButton.tap()
        return self
    }
   
    // MARK: - Asserts
    
    @discardableResult
    func assertLikes() -> MeowleCatDetailsPage{
        XCTAssertTrue(app.staticTexts["👍 6"].waitForExistence(timeout: .timeout))
        return self
    }
    
}
