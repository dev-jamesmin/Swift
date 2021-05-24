//
//  CookieShop.swift
//  Delegate
//
//  Created by Jaemin Lee on 2021/05/24.
//

import Foundation

class CookieShop: BakeryDelegate
{
    func cookieWasBaked(_ cookie: Cookie)
    {
        print("Yay! A new cookie was baked, with size \(cookie.size)")
    }
}
