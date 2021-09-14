//
//  MockURLSession.swift
//  NetworkRequestTestsTests
//
//  Created by Krzysztof Jankowski on 10/09/2021.
//
import XCTest
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
    
    func verifyDataTask(with request: URLRequest, file: StaticString = #file, line: UInt = #line) {
        guard ​dataTaskWasCalledOnce​(file: file, line: line) else {
            return
        }
        XCTAssertEqual(dataTaskCallCount, 1, "call count", file: file, line: line)
        XCTAssertEqual(dataTastArgsRequest.first, request, "request", file: file, line: line)
    }
    private func ​dataTaskWasCalledOnce​(
        file: StaticString = #file,
        line: UInt = #line
    ) -> Bool{
      verifyMethodCalledOnce(
        methodName: "dataTask(with:completionHandler:)",
        callCount: dataTaskCallCount,
        describeArguments: "request: \(dataTastArgsRequest)",
        file: file,
        line: line)
    }
}

private class DummyURLSessionDataTask: URLSessionDataTask {
    override func resume() {
        
    }
}

func verifyMethodCalledOnce(
    methodName: String,
    callCount: Int,
    describeArguments: @autoclosure () -> String,
    file: StaticString = #file,
    line: UInt = #line
) -> Bool {
    if callCount == 0 {
        XCTFail("Wanted but not invoked: \(methodName)", file: file, line: line)
        return false
    }
    
    if callCount > 1 {
        XCTFail("Wanted 1 time but was called \(callCount)times" + "\(methodName) with \(describeArguments())", file: file, line: line)
        return false
    }
    return true
}
