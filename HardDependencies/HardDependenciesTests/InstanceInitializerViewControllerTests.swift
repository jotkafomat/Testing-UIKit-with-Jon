//
//  InstanceInitializerViewControllerTests.swift
//  HardDependenciesTests
//
//  Created by Krzysztof Jankowski on 26/08/2021.
//

import XCTest
@testable import HardDependencies

class InstanceInitializerViewControllerTests: XCTestCase {

    func test_ViewDidAppear() {
        let sut = InstanceInitializerViewController(analitics: Analytics())
        
        sut.loadView()
        sut.viewDidAppear(false)
    }

}
