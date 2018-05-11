//
//  ViewController.swift
//  TheNextBigThingApp
//
//  Created by Ilter Cengiz on 21/4/18.
//  Copyright © 2018 Ilter Cengiz. All rights reserved.
//

import UIKit
import AwesomeAPI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        AwesomeAPIClient.shared.testRun(completion: {
            // Do something when we get the data
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

