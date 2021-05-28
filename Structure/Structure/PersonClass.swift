//
//  PersonClass.swift
//  Structure
//
//  Created by Jaemin Lee on 2021/05/28.
//

import Foundation

class PersonClass {
    let name: String
    var age: Int
    var height: Double?
    
//    func changeName(to name: String) {
//        self.name = name // 에러 발생! 상수형으로 선언된 인스턴스 프로퍼티를 변경할 수 없습니다.
//    }
    
    func changeAge(to age: Int) {
        self.age = age
    }
    
    func changeHeight(to height: Double) {
        self.height = height
    }

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
