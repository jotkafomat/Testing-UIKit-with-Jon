//
//  StoryboardBasedViewControllerTests.swift
//  LoadViewControllersTests
//
//  Created by Krzysztof Jankowski on 13/08/2021.
//

import XCTest

@testable import LoadViewControllers

class StoryboardBasedViewControllerTests: XCTestCase {

    func testLoading() {
        let sb = UIStoryboard(
            name: "Main",
            bundle: nil
        )
        
        let sut: StoryboardBasedViewController = sb.instantiateViewController(
            identifier: String(describing: StoryboardBasedViewController.self)
        )
        
        sut.loadViewIfNeeded()
        
        XCTAssertNotNil(sut.label)
    }

}
