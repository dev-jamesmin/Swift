//
//  ViewController.swift
//  TabbarTest
//
//  Created by Jaemin Lee on 2021/06/04.
//

import UIKit

class ViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override var traitCollection: UITraitCollection {
        let realTraits = super.traitCollection
        let fakeTraits = UITraitCollection(horizontalSizeClass: .regular)
        return UITraitCollection(traitsFrom: [realTraits, fakeTraits])
    }


}


//import UIKit
//
//class CustomTabBarVC: UITabBarController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//    }
//
//    override var traitCollection: UITraitCollection {
//        let realTraits = super.traitCollection
//        let fakeTraits = UITraitCollection(horizontalSizeClass: .regular)
//        return UITraitCollection(traitsFrom: [realTraits, fakeTraits])
//    }
//}

