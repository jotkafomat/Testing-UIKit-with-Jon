//
//  OverrideViewControllerTests.swift
//  HardDependenciesTests
//
//  Created by Krzysztof Jankowski on 25/08/2021.
//

import XCTest
@testable import HardDependencies

private class TestableOverrideViewController: OverrideViewController {
    override func analitics() -> Analytics {
        Analytics()
    }
}

class OverrideViewControllerTests: XCTestCase {

    func testViewDidApper() {
        let sut = TestableOverrideViewController()
        
        sut.loadViewIfNeeded()
        sut.viewDidAppear(false)
    }
}
