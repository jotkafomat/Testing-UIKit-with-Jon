//
//  XIBBasedViewControllerTests.swift
//  LoadViewControllersTests
//
//  Created by Krzysztof Jankowski on 16/08/2021.
//

import XCTest
@testable import LoadViewControllers

class XIBBasedViewControllerTests: XCTestCase {

    func test_loading() {
        let sut = XIBBasedViewController()
        
        sut.loadViewIfNeeded()

        XCTAssertNotNil(sut.label)
    }
}
