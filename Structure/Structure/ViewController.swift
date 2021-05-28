//
//  ViewController.swift
//  Structure
//
//  Created by Jaemin Lee on 2021/05/27.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let personStructure1 = PersonStructure(name: "Kio", age: 23)
        var personStructure2 = PersonStructure(name: "Steven", age: 21)
        
//        personStructure1.name = "KangKyung" // 에러 발생! person1은 상수형 인스턴스이므로 변경할 수 없습니다.
//        personStructure1.age = 5 // 에러 발생! person1은 상수형 인스턴스이므로 변경할 수 없습니다.
//        personStructure1.changeAge(to: 7) // 에러 발생! person1은 상수형 인스턴스이므로 mutating 메서드를 사용할 수 없습니다.
//        personStructure1 = personStructure2 // 에러 발생! person1은 상수형 인스턴스이므로 다른 인스턴스를 할당할 수 없습니다.
        
        
//        personStructure2.name = "DuckBok" // 에러 발생! name 인스턴스 프로퍼티는 상수형으로 선언되어 있으므로 변경할 수 없습니다.
        personStructure2.age = 3 // 21 -> 3
        personStructure2.changeAge(to: 8) // 3 -> 8
        personStructure2.heightInCM = 180.7 // nil -> Optional(180.7)
        personStructure2.changeHeight(to: 181.1) // Optional(180.7) -> Optional(181.1)
        personStructure2 = personStructure1
        
        
        let personClass1 = PersonClass(name: "Summer", age: 20)
        var personClass2 = PersonClass(name: "Coda", age: 25)
        
//        personClass1.name = "Coda" // 에러 발생! name은 상수형 인스턴스 프로퍼티이므로 변경할 수 없습니다.
        personClass1.age = 3 // 20 -> 3
        personClass1.changeAge(to: 10) // 3 -> 10
        personClass1.height = 185.3 // nil -> Optional(185.3)
        personClass1.changeHeight(to: 186.0) // Optional(185.3) -> Optional(186.0)
//        personClass1 = personClass2 // 에러 발생! personClass1은 상수형으로 선언되어 있으므로 다른 인스턴스를 할당할 수 없습니다.
        
        
    }


}

