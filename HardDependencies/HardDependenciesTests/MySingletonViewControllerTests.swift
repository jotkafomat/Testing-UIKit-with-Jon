//
//  MySingletonViewControllerTests.swift
//  HardDependenciesTests
//
//  Created by Krzysztof Jankowski on 18/08/2021.
//

import XCTest
@testable import HardDependencies

class MySingletonViewControllerTests: XCTestCase {

    override func setUp() {
        super.setUp()
        MySingletonAnalytics.stubbedInstance = MySingletonAnalytics()
    }
    
    override func tearDown() {
        MySingletonAnalytics.stubbedInstance = nil
        super.tearDown()
    }
    
    func test_viewAppear() {
        let sut = MySingletonViewController()
        sut.loadViewIfNeeded()
        
        sut.viewDidAppear(false)
    }


}
