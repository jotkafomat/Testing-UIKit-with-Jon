//
//  CoveredClassTests.swift
//  CodeCoverageTests
//
//  Created by Krzysztof Jankowski on 06/05/2021.
//

import XCTest
@testable import CodeCoverage

class CoveredClassTests: XCTestCase {

    func test_MaxWith1And2ShouldReturn2() {
        let result = CoveredClass.max(1, 2)
        
        XCTAssertEqual(result, 2)
    }
    
    func test_MaxWith1And2ShouldReturn3() {
        let result = CoveredClass.max(3, 2)
        
        XCTAssertEqual(result, 3)
    }
    
    func test_CommaSeparatedFrom2To4ShoudReturn234SeparatedByComma() {
        let result = CoveredClass.commaSeparated(from: 2, to: 4)
        
        XCTAssertEqual(result, "2,3,4")
    }
    
    func test_CommaSeparatedFrom2To2ShoudReturn2WithNoComma() {
        let result = CoveredClass.commaSeparated(from: 2, to: 2)

        XCTAssertEqual(result, "2")
    }
    
    func test_areaWithWidth7ShoudBe49() {
        let sut = CoveredClass()
        
        sut.width = 7
        
        XCTAssertEqual(sut.area, 49)
    }
    
    
}
