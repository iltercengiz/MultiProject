//
//  AwesomeAPIClient.swift
//  AwesomeAPI
//
//  Created by Ilter Cengiz on 27/4/18.
//  Copyright © 2018 Ilter Cengiz. All rights reserved.
//

import Foundation
import Alamofire

public final class AwesomeAPIClient {
    
    public static let shared = AwesomeAPIClient()
    
    public func testRun(completion: @escaping () -> Void) {
        print("AwesomeAPIClient is up and running! 🎉")
        
        Alamofire.request("https://httpbin.org/get").responseJSON { response in
            print("Request: \(String(describing: response.request))")   // original url request
            print("Response: \(String(describing: response.response))") // http url response
            print("Result: \(response.result)")                         // response serialization result
            
            if let json = response.result.value {
                print("JSON: \(json)") // serialized json response
            }
            
            if let data = response.data, let utf8Text = String(data: data, encoding: .utf8) {
                print("Data: \(utf8Text)") // original server data as UTF8 string
            }
            
            completion()
        }
    }
    
}
