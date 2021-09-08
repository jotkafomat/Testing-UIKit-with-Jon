//
//  ViewControllerTests.swift
//  NavigationTests
//
//  Created by Krzysztof Jankowski on 02/09/2021.
//

import XCTest
@testable import Navigation

class ViewControllerTests: XCTestCase {

    func testButtonWasTapped() {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        
        let sut: ViewController = storyBoard.instantiateViewController(identifier: "ViewController")
        sut.loadViewIfNeeded()
       let navigation = UINavigationController(rootViewController: sut)
       
        tap(sut.codePushButton)
        
        RunLoop.current.run(until: Date())
        
        XCTAssertNotNil(sut.navigationController)
        XCTAssertEqual(navigation.viewControllers.count, 2)
        
        let pushedViewController = navigation.viewControllers.last
        XCTAssertTrue(pushedViewController is CodeNextViewController)
        
        guard let codeNextVC = pushedViewController as? CodeNextViewController else {
            return
        }
        XCTAssertEqual(codeNextVC.label.text, "Pushed from Code")
    }
    
    func test_tappingCodePushButton_shouldPushCodeNextViewController() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let sut = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        
        sut.loadViewIfNeeded()
        
        let navigation = UINavigationController(rootViewController: sut)
        
        tap(sut.codePushButton)
        RunLoop.current.run(until: Date())
        
        XCTAssertEqual(navigation.viewControllers.count, 2)
        let pushedVC = navigation.viewControllers.last
        
        guard let codeNextVC = pushedVC as? CodeNextViewController else {
            XCTFail()
            return
        }
        XCTAssertEqual(codeNextVC.label.text, "Pushed from Code")
        
    }
}

private class TestableViewController: ViewController {
    var presentCallCount = 0
    var presentArgsViewController: [UIViewController] = []
    var presentArgsAnimated: [Bool] = []
    var presentArgsClosure: [(() -> Void)?] = []
    
    override func present(_ viewControllerToPresent: UIViewController, animated flag: Bool, completion: (() -> Void)? = nil) {
        presentCallCount += 1
        presentArgsViewController.append(viewControllerToPresent)
        presentArgsAnimated.append(flag)
        presentArgsClosure.append(completion)
    }
}
