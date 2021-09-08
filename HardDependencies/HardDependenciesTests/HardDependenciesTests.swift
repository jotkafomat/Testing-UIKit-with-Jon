//
//  HardDependenciesTests.swift
//  HardDependenciesTests
//
//  Created by Krzysztof Jankowski on 18/08/2021.
//

import XCTest
@testable import HardDependencies


class HardDependenciesTests: XCTestCase {

    override func setUpWithError() throws {
        super.setUp()
        MySingletonAnalytics.stubbedInstance = MySingletonAnalytics()
    }

    override func tearDownWithError() throws {
        MySingletonAnalytics.stubbedInstance = nil
        super.tearDown()
    }
    
    
    func test_viewDidApear() {
        let sut = MySingletonViewController()
        
        sut.loadViewIfNeeded()
        
        sut.viewDidAppear(false)
    }




}
