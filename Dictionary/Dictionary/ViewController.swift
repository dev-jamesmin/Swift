//
//  ViewController.swift
//  Dictionary
//
//  Created by Jaemin Lee on 2021/05/20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]

        print(numberOfLegs)
        
        for (animalName, legCount) in numberOfLegs {
            print("\(animalName)s have \(legCount) legs")
        }
        
        
        let order = numberOfLegs.keys.sorted(by: <)
        print(order)
        
        for (animalName) in order {
            print("\(animalName)")
        }

    }


}

