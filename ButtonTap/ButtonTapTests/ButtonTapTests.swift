//
//  ButtonTapTests.swift
//  ButtonTapTests
//
//  Created by Krzysztof Jankowski on 27/08/2021.
//

import XCTest
@testable import ButtonTap

class ButtonTapTests: XCTestCase {
    
    func testButtonWasTapped() {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        
        let sut: ViewController = storyBoard.instantiateViewController(identifier: String(describing: ViewController.self))
        sut.loadViewIfNeeded()
        sut.button.sendActions(for: .touchUpInside)
    }
}
