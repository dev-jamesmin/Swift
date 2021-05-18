//
//  ViewController.swift
//  DynamicDispatch
//
//  Created by Jaemin Lee on 2021/05/18.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let object: Parent = Child()
        object.someMethod()
        // Child의 someMethod call
    }


}

