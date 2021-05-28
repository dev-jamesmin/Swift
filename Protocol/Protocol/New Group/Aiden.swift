//
//  Aiden.swift
//  Protocol
//
//  Created by Jaemin Lee on 2021/05/24.
//

import Foundation

class Aiden: Student {
    var roundingHeight: Double = 0.0
    var height: Double {
        get {
            return roundingHeight
        }
        set {
            roundingHeight = 183.0
        }
    }
    var name: String = "Aiden"
    static var schoolNumber: Int = 20112330
}
