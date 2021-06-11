//
//  ViewController.swift
//  AccessControl
//
//  Created by Jaemin Lee on 2021/05/27.
//

import UIKit
import Custom

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        let openClassInstance = OpenClass()

//        openClassInstance.someOpenMethod()          // 메소드 접근 가능
//        openClassInstance.somePublicMethod()        // 메소드 접근 가능
        
//        openClassInstance.someInternalMethod()      // 불가
        
        
//        File-private ??
        
        
        
//
//
//        let publicClassInstance = PublicClass()
//
//        publicClassInstance.someOpenMethod()          // 메소드 접근 가능
//        publicClassInstance.somePublicMethod()        // 메소드 접근 가능
        
            // default internal
//        let internalInstance = InternalClass()    // 사용 불가.
        
    }
}

//class SubClass : OpenClass {}
//class SubClass : PublicClass {} -> error


class OpenSubClass : OpenClass{
    override func someOpenMethod(){
        print("Hello, world!")
    }
    
    // 오버 라이드 불가
//    override func somePublicMethod(){
//        print("Hello, world!")//Error!
//    }
}

// 상속 불가
//class PublicSubClass : PublicClass{
//    override func someOpenMethod(){
////        print("Hello, world!")//Error!
//    }
//}
