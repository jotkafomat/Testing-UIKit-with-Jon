//
//  OutletConnectionsTests.swift
//  OutletConnectionsTests
//
//  Created by Krzysztof Jankowski on 27/08/2021.
//

import XCTest
@testable import OutletConnections

class OutletConnectionsTests: XCTestCase {

    func testOutletsShouldBeConnected​() {
        let sut = OutletConnectionsViewController()
        
        sut.loadViewIfNeeded()
        
        XCTAssertNotNil(sut.label, "label")
        XCTAssertNotNil(sut.button, "button")
        
    }

}
