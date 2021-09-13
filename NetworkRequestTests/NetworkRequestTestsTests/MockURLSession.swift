//
//  MockURLSession.swift
//  NetworkRequestTestsTests
//
//  Created by Krzysztof Jankowski on 10/09/2021.
//

import Foundation
@testable import NetworkRequestTests


class MockURLSession: URLSessionProtocol {
    
    var dataTaskCallCount = 0
    var dataTastArgsRequest: [URLRequest] = []
    
    func dataTask(with request: URLRequest, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
        dataTaskCallCount += 1
        dataTastArgsRequest.append(request)
        return DummyURLSessionDataTask()
    }
    
    private class DummyURLSessionDataTask: URLSessionDataTask {
        override func resume() {
            
        }
    }

}
