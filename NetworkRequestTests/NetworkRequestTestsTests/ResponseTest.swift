//
//  ResponseTest.swift
//  NetworkRequestTestsTests
//
//  Created by Krzysztof Jankowski on 17/09/2021.
//

import Foundation
import XCTest
@testable import NetworkRequestTests

class ResponseTest: XCTestCase {
   
    func test_searchForBookNetworkCall_withSuccessResponse_shouldSaveDataInResults() {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let sut: ViewController = sb.instantiateViewController(withIdentifier: "Storyboard") as! ViewController
        
        let spyURLSession = SpyURLSession()
        
        sut.session = spyURLSession
        
        sut.loadViewIfNeeded()
        tap(sut.button)
        
        let handleResultsCalled = expectation(description: "handleResults called")
        sut.handleResults = { _ in
            handleResultsCalled.fulfill()
        }
        
        
        spyURLSession.dataTaskArgsCompletionHandler.first?(
            jsonData(), response(statusCode: 200), nil
        )
        
        waitForExpectations(timeout: 0.01)
        
        XCTAssertEqual(sut.results, [SearchResult(artistName: "Artist", trackName: "TrackName", averageUserRating: 2.5, genres: ["Foo", "Bar"])])
    }
    
    private func jsonData() -> Data {
        """
        {
           "results":[
              {
                 "artistName":"Artist",
                 "trackName":"TrackName",
                 "averageUserRating":2.5,
                 "genres":[
                    "Foo",
                    "Bar"
                 ]
              }
           ]
        }
        """.data(using: .utf8)!
    }
    
    private func response(statusCode: Int) -> HTTPURLResponse? {
        HTTPURLResponse(
            url: URL(string: "http://DUMMY")!,
            statusCode: statusCode,
            httpVersion: nil,
            headerFields: nil)
    }
}
