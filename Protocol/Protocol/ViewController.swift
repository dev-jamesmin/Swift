//
//  ViewController.swift
//  Protocol
//
//  Created by Jaemin Lee on 2021/05/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let aiden = Aiden()
        print(aiden.height, aiden.name, Aiden.schoolNumber)
        // 0.0 Aiden 20112330
        aiden.height = 183.0
        print(aiden.height, aiden.name, Aiden.schoolNumber)
        // 183.0 Aiden 20112330
    }


}

