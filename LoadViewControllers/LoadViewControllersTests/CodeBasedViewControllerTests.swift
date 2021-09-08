//
//  CodeBasedViewControllerTests.swift
//  LoadViewControllersTests
//
//  Created by Krzysztof Jankowski on 16/08/2021.
//

import XCTest
@testable import LoadViewControllers

class CodeBasedViewControllerTests: XCTestCase {

    func test_loading() {
        
        let sut = CodeBasedViewController(data: "Dummy")
        sut.loadViewIfNeeded()
        
    }

}
