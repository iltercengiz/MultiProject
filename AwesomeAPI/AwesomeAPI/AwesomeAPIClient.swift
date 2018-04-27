//
//  AwesomeAPIClient.swift
//  AwesomeAPI
//
//  Created by Ilter Cengiz on 27/4/18.
//  Copyright © 2018 Ilter Cengiz. All rights reserved.
//

import Foundation

public final class AwesomeAPIClient {
    
    public static let shared = AwesomeAPIClient()
    
    public func testRun() {
        print("AwesomeAPIClient is up and running! 🎉")
    }
    
}
