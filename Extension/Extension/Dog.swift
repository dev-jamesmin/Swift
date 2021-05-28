//
//  Dog.swift
//  Extension
//
//  Created by Jaemin Lee on 2021/05/28.
//

import Foundation

class Dog {
    func eat() {
        print("밥 먹기")
    }
}

extension Dog {
    // 저장 프로퍼티는 사용 불가
//    var color: String! // 컴파일 에러
    
    // 계산 프로퍼티 사용가능
        var everageLife: Int! {return 15}
}
