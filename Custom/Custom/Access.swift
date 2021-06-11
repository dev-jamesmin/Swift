//
//  Access.swift
//  Custom
//
//  Created by Jaemin Lee on 2021/06/10.
//

import Foundation

open class OpenClass{
    public init(){}
    
    fileprivate func someMethod() {}
    
    open func someOpenMethod(){
        print("OpenClass,someOpenMethod")
    }
    public func somePublicMethod(){
        print("OpenClass,somePublicMethod")
    }
    
    internal func someInternalMethod() {
        print("OpenClass,someInternalMethod")
    }
}


public class PublicClass{
    public init(){}
//    public func somePublicMethod(){}
    open func someOpenMethod(){
        print("PublicClass,someOpenMethod")
    }
    
    public func somePublicMethod(){
        print("PublicClass,somePublicMethod")
    }
}


class AA : OpenClass{

    override func someMethod() {
        print("Hello")
    }
}
