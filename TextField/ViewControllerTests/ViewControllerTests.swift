//
//  ViewControllerTests.swift
//  ViewControllerTests
//
//  Created by Krzysztof Jankowski on 22/09/2021.
//

import XCTest
@testable import TextField

class ViewControllerTests: XCTestCase {
    
    private var sut: ViewController!
    
    override func setUp() {
        super.setUp()
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        
        sut = sb.instantiateViewController(identifier: String(describing: ViewController.self))
        
        sut.loadViewIfNeeded()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func test_outlets_shouldBeConnected() {
        
        XCTAssertNotNil(sut.userNameField, "userField")
        XCTAssertNotNil(sut.passwordField, "passwordField")
    }
    
    func test_usernameFieldAttributesShouldBeSet() {
     
                
        let textField = sut.userNameField!
        
        XCTAssertEqual(textField.textContentType, .username, "textContentType")
        XCTAssertEqual(textField.autocorrectionType, .no, "autocorrectionType")
        XCTAssertEqual(textField.returnKeyType, .next, "returnKeyType")
    }
    
    func test_passwordFieldAttributesShouldBeSet() {
        
        let textField = sut.passwordField!
        
        XCTAssertEqual(textField.textContentType, .password, "textContentType")
        XCTAssertEqual(textField.returnKeyType, .go, "returnKeyType")
        XCTAssertTrue(textField.isSecureTextEntry, "isSecureTextEntry")
        
        
    }
}
