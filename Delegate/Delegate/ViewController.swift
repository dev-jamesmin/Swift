//
//  ViewController.swift
//  Delegate
//
//  Created by Jaemin Lee on 2021/05/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        let shop = CookieShop()

        let bakery = Bakery()
        bakery.delegate = shop
        
        bakery.makeCookie()
        // Output: Yay! A new cookie was baked, with size 6
        
    }


}


