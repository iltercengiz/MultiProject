//
//  AwesomeAPITests.swift
//  AwesomeAPITests
//
//  Created by Ilter Cengiz on 21/4/18.
//  Copyright © 2018 Ilter Cengiz. All rights reserved.
//

import XCTest
@testable import AwesomeAPI

class AwesomeAPITests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testTestRun() {
        let e = expectation(description: "Awesome request")
        
        AwesomeAPIClient.shared.testRun {
            e.fulfill()
        }
        
        waitForExpectations(timeout: 10) { error in
            if error != nil {
                print("Failed!")
            }
        }
    }
    
}
