//
//  UserDefaultsTests.swift
//  UserDefaultsTests
//
//  Created by Krzysztof Jankowski on 08/09/2021.
//

import XCTest
@testable import UserDefaults

class UserDefaultsTests: XCTestCase {
    
    private var sut: ViewController!
    private var defaults: FakeUserDefaults!
    
    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        sut = storyboard.instantiateViewController(identifier: "UserDefaultViewController")
        defaults = FakeUserDefaults()
        sut.userDefaults = defaults
    }
    
    override func tearDown() {
        sut = nil
        defaults = nil
        super.tearDown()
    }

    func test_viewDidLoad_withEmptyUserDefaults_shouldShow0InCounterLabel() {
        
        sut.loadViewIfNeeded()
        
        XCTAssertEqual(sut.counterLabel.text, "0")
    }
    
    func test_viewDidLoad_with7InUserDefaults_shouldShow7InCounterLabel​() {
       
        defaults.integers = ["count" : 7]
        sut.loadViewIfNeeded()
        
        XCTAssertEqual(sut.counterLabel.text, "7")
        
    }
    
    func test_tappingButton_with12InUserDefaults_shouldWrite13ToUserDefaults​() {
        defaults.integers = ["count" : 12]
        
        sut.loadViewIfNeeded()
        tap(sut.incrementButton)
        
        XCTAssertEqual(defaults.integers["count"], 13)
    }
    
    func testappingButton_with12InUserDefaults_shouldWrite13ToUserDefaults​() {
        defaults.integers = ["count" : 42]
        
        sut.loadViewIfNeeded()
        tap(sut.incrementButton)
        
        XCTAssertEqual(sut.counterLabel.text, "43")
    }
}
