//
//  MyClass.swift
//  Protocol
//
//  Created by Jaemin Lee on 2021/05/28.
//

import Foundation
//* 계산 프로퍼티 구현

class MyClass: HoldingBreath {
    var duration: Int {
        get {
            return 0
        }set {}
    }
}

//* 저장 프로퍼티 구현
struct MyStruct: HoldingBreath {
    var duration: Int
}
