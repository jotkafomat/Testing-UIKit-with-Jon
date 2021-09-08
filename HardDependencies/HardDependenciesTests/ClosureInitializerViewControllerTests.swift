//
//  ClosureInitializerViewControllerTests.swift
//  HardDependenciesTests
//
//  Created by Krzysztof Jankowski on 26/08/2021.
//

import XCTest
@testable import HardDependencies

class ClosureInitializerViewControllerTests: XCTestCase {

    func test_ViewDidAppear() {
        let sut = ClosureInitializerViewController { Analytics() }
        
        sut.loadViewIfNeeded()
        sut.viewDidAppear(false)
    }
}
