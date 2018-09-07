//
//  ViewController.swift
//  SwiftTMEService
//
//  Created by hanmbink on 09/07/2018.
//  Copyright (c) 2018 hanmbink. All rights reserved.
//

import UIKit
import SwiftTMEService

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        TMEService.shared.fetchCategories(success: { [weak self] (category) in
            print("category.name: \(category.name)")
        }) { [weak self] (error) in
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

