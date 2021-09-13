//
//  ViewControllerTests.swift
//  NetworkRequestTestsTests
//
//  Created by Krzysztof Jankowski on 13/09/2021.
//

import Foundation
import XCTest
@testable import NetworkRequestTests

class ViewControllerTests: XCTestCase {
    
    func test_tappingButton_shouldMakeDataTaskToSearchForEBookOutFromBoneville() {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let sut: ViewController = sb.instantiateViewController(withIdentifier: "Storyboard") as! ViewController
        
        let mockURLSession = MockURLSession()
        sut.session = mockURLSession
        sut.loadViewIfNeeded()
        
        tap(sut.button)
        
        XCTAssertEqual(mockURLSession.dataTaskCallCount, 1)
        XCTAssertEqual(mockURLSession.dataTastArgsRequest.first, URLRequest(url: URL(string: "https://itunes.apple.com/search?media=ebook&term=out%20from%20bonnevile")!))

    }
}
