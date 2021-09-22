//
//  ViewControllerTests.swift
//  ViewControllerTests
//
//  Created by Krzysztof Jankowski on 22/09/2021.
//

import XCTest
@testable import TextField

class ViewControllerTests: XCTestCase {

    func test_outlets_shouldBeConnected() {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        
        let sut: ViewController = sb.instantiateViewController(identifier: String(describing: ViewController.self))
        
        sut.loadViewIfNeeded()
        
        XCTAssertNotNil(sut.userNameField, "userField")
        XCTAssertNotNil(sut.passwordField, "passwordField")
    }
    
    func test_usernameFieldAttributesShouldBeSet() {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        
        let sut: ViewController = sb.instantiateViewController(identifier: String(describing: ViewController.self))
        
        sut.loadViewIfNeeded()
        
        let textField = sut.userNameField!
        XCTAssertEqual(textField.textContentType, .username, "textContentType")
        XCTAssertEqual(textField.autocorrectionType, .no, "autocorrectionType")
        XCTAssertEqual(textField.returnKeyType, .next, "returnKeyType   ")
    }
}
