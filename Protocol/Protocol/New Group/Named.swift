//
//  Named.swift
//  Protocol
//
//  Created by Jaemin Lee on 2021/05/28.
//

import Foundation

protocol Named {
    init(name: String)
}

class Monster: Named {
    var name: String?
    required init(name: String) {
        self.name = name
    }
}

//> convenience initializer에서 required 추가 해야함.  => ????
//> struct에는 required 사용하지 않음 -> ???

struct Boss: Named {
    init(name: String) {}
}
