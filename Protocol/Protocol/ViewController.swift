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
        
        // * 객체 생성과 사용
        var sparrow = Bird()
        sparrow.sing() // 짹짹쨱
        
        var singinganimal: Human = Human()
        singinganimal.sing() // 가능
        singinganimal.dance() // 불가능
        
        let Animal: Singing = Bird() // 타입 오류
    }
    
//    * 다수의 프로토콜 타입
    func entertain(who: Singing & Dancing) {}
//        -> singing, Dancing 프로포콜을 체택한 객체를 파라미터로 사용함.
    
    
}

