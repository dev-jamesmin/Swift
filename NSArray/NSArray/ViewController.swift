//
//  ViewController.swift
//  NSArray
//
//  Created by Jaemin Lee on 2021/05/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var a = [1, 2, 3]
        a = append_one(a)
        
        
        let c: [Int] = [1, 2, 3]
        var d = c        // No copy will occur here.
        print("d->BRFORE:",d)
        d.append(2)      // A copy *does* occur here.
        print("d->AFTER:",d)
        
    }
    
    func append_one(_ a: [Int]) -> [Int] {
//        a.append(1)
        return a

    }
}

