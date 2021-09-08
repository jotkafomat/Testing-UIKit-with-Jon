//
//  AlertTestsTests.swift
//  AlertTestsTests
//
//  Created by Krzysztof Jankowski on 31/08/2021.
//

import XCTest
@testable import AlertTests
import ViewControllerPresentationSpy

class AlertTestsTests: XCTestCase {
    
    private var alertVerifier: AlertVerifier!
    private var sut: ViewController!
    
    override func setUp() {
        super.setUp()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        sut = storyboard.instantiateViewController(identifier: String(describing: ViewController.self))
        
        sut.loadViewIfNeeded()
        alertVerifier = AlertVerifier()
    }
    
    override func tearDown() {
        alertVerifier = nil
        sut = nil
        super.tearDown()
    }
    
    
    
    func testTappingButtonShouldShowAlert() {
        
        tap(sut.button)
        
        alertVerifier.verify(
            title: "Do The Right Thing",
            message: "Let us know if you want to do the thing",
            animated: true,
            actions: [.cancel("Cancel"), .default("OK")],
            presentingViewController: sut)
        XCTAssertEqual(alertVerifier.preferredAction?.title, "OK", "preferred action")
    }
    
    func testExecuteAlertActionwithOKButton() throws {
        tap(sut.button)
        try alertVerifier.executeAction(forButton: "OK")
    }
    
    func testExecuteAlertActionwithCancelButton() throws {
        tap(sut.button)
        try alertVerifier.executeAction(forButton: "Cancel")
    }
}
