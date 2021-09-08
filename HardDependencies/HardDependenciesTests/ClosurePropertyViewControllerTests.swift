//
//  ClosurePropertyViewControllerTests.swift
//  HardDependenciesTests
//
//  Created by Krzysztof Jankowski on 26/08/2021.
//

import XCTest
@testable import HardDependencies
class ClosurePropertyViewControllerTests: XCTestCase {

    func test_ViewDidAppear() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let sut: ClosurePropertyViewController = storyboard.instantiateViewController(identifier: String(describing: ClosurePropertyViewController.self))
        
        sut.loadViewIfNeeded()
        sut.viewDidAppear(false)
    }
}
