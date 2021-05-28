//
//  PersonStructure.swift
//  Structure
//
//  Created by Jaemin Lee on 2021/05/27.
//

import Foundation

struct PersonStructure {
    let name: String
    var age: Int
    var heightInCM: Double?

//    mutating func changeName(to name: String) {
//        self.name = name // 에러 발생! 상수형으로 선언된 인스턴스 프로퍼티를 변경할 수 없습니다.
//    }

    mutating func changeAge(to age: Int) {
        self.age = age
    }
    
    mutating func changeHeight(to height: Double) {
        self.heightInCM = height
    }
}
