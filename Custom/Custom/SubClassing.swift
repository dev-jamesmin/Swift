//
//  SubClassing.swift
//  Custom
//
//  Created by Jaemin Lee on 2021/06/10.
//

import Foundation

//class A: PublicClass {} // 동일 프로젝트내 접근
class A: OpenClass {
    override func someOpenMethod() {
        print("Hello,World")
    }
}
