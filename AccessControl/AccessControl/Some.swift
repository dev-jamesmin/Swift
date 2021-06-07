//
//  Some.swift
//  AccessControl
//
//  Created by Jaemin Lee on 2021/06/03.
//

import Foundation

//public class SomeClass{}

public struct SomeStruct {}

public enum SomeEnum {}

// open
// public

public class SomeClass{

    fileprivate var someProperty : String = "someProperty"

    private func someFunction() {}

}
