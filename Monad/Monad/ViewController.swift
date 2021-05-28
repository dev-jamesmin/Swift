//
//  ViewController.swift
//  Monad
//
//  Created by Jaemin Lee on 2021/05/28.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        let myNumber: Int? = 2
        print(myNumber.map({$0+3}) as Any)//Optional(5)
        
        
//        Optional(2)
//        Optional => Context
//        2 => Content
//        map -> Functor
//        flatMap -> Monad
    }

}

