//
//  Bakery.swift
//  Delegate
//
//  Created by Jaemin Lee on 2021/05/24.
//

import Foundation

class Bakery
{
//    func makeCookie()
//    {
//        var cookie = Cookie()
//        cookie.size = 6
//        cookie.hasChocolateChips = true
//    }
    
    var delegate:BakeryDelegate?

    func makeCookie()
    {
        var cookie = Cookie()
        cookie.size = 6
        cookie.hasChocolateChips = true

        delegate?.cookieWasBaked(cookie)
    }
}
