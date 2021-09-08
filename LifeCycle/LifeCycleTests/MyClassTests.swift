//
//  MyClassTests.swift
//  LifeCycleTests
//
//  Created by Krzysztof Jankowski on 06/05/2021.
//

import XCTest
@testable import LifeCycle

class MyClassTests: XCTestCase {
    
    private var sut: MyClass!
    
    override func setUp() {
        super.setUp()
        sut = MyClass()
    }
    
    override func tearDown() {
        super.tearDown()
        sut = nil
    }

    func test_MethodOne() {
        
        //Act
        sut.methodOne()
        //Assert
    }
    
    func test_MethodTwo() {
        
        sut.methodTwo()
    }
}
