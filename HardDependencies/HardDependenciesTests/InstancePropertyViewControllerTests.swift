//
//  InstancePropertyViewControllerTests.swift
//  HardDependenciesTests
//
//  Created by Krzysztof Jankowski on 26/08/2021.
//

import XCTest
@testable import HardDependencies

class InstancePropertyViewControllerTests: XCTestCase {
    
    func test_viewDidAppear() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let sut: InstancePropertyViewController = storyboard.instantiateViewController(identifier: String(describing: InstancePropertyViewController.self))
        sut.analitics = Analytics()
        sut.loadView()
        sut.viewDidAppear(false)
    }

}
