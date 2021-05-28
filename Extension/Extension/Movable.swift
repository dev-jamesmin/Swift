//
//  Movable.swift
//  Extension
//
//  Created by Jaemin Lee on 2021/05/28.
//

import Foundation
//* Protocol과 Protocol extension
 
protocol Movable { }
extension Movable {
    func move() {
        print("Go! go! go!")
    }
}

//* Protocol 채택, 객체를 이용한 호출
struct Human : Movable { }
