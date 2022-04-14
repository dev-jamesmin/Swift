//
//  SearchResult.swift
//  AlamofireSpmTest
//
//  Created by 이재민 on 2022/04/14.
//

import Foundation

//struct SearchResult: Decodable {
//    let success: success
//}
//struct SearchResult : Decodable {
//    let success : Success
//}

struct SearchResult : Decodable {
    let completed : Bool
    let id : Int
    let title : String
    let userId : Int
   
    enum CodingKeys: String, CodingKey {
        case completed
        case id
        case title
        case userId
    }
}
