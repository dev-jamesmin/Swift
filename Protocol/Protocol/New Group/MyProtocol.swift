//
//  MyProtocol.swift
//  Protocol
//
//  Created by Jaemin Lee on 2021/05/28.
//

import Foundation

protocol MyProtocol: class {}
//    -> 구조체, enum 에서 채택시 컴파일 에러 발생.

//프로토콜 타입을 weak와 사용할 때
class Myclass: MyProtocol {
    weak var property: MyProtocol!
}
//    -> 프로토콜로 타입을 선언하는것은 class, struct, enum 모두 가능하지만, ARC는 클래스만 가능함. 따라서, 프로토콜 타입으로 선언한 변수를 weak 사용하기 위해서는 class 에서만 사용 가능함.
