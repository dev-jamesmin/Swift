//
//  InternalClass.swift
//  Custom
//
//  Created by Jaemin Lee on 2021/06/11.
//

import Foundation

internal class InternalClass{
    public init() {}
    
    open func someOpenMethod(){
        print("InternalClass,someOpenMethod")
    }
    
    public func somePublicMethod(){
        print("InternalClass,somePublicMethod")
    }

}

