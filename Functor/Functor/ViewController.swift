//
//  ViewController.swift
//  Functor
//
//  Created by Jaemin Lee on 2021/05/31.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        Functor
//        Monad
        
        let array = [1, 2, 3, 4]
        
        callFunctor()
        callMonad()
    }
    
//    func fmap<A, B>(_ anArray: [A], _ tranform: (A) -> B) -> [B] {
//      return anArray.map(transform)
//    }
    
    func callFunctor(){
        
        print("Functor")
        let intBox: Box<Int> = .some(7)
        let result: Box<Int> = intBox.add(3)
    }
    
    
    func callMonad(){
        print("Monad")
        let intBox: Box<Int> = .some(7)
        let result: Box<Int> = intBox.add(3)
    }


}

enum Box<T> {
    case some(T)
    case empty
}

extension Box where T == Int {
    func add(_ value: Int) -> Box<Int> {
        switch self {
        case .some(let t):
            return .some(t + value)
        case .empty:
            return .empty
        }
    }
}

extension Box {
    func map<U>(_ f: @escaping (T) -> U) -> Box<U> {
        switch self {
        case .some(let t):
            return .some(f(t))
        case .empty:
            return .empty
        }
    }
}

//extension Box {
//    func apply<U>(_ f: Box<((T) -> U)>) -> Box<U> {
//        switch f {
//        case .some(let transform):
//            switch self {
//            case .some(let t):
//                return .some(transform(t))
//            case .empty:
//                return .empty
//            }
//        case .empty:
//            return .empty
//        }
//    }
//}

extension Box {
    func apply<U>(_ f: Box<((T) -> U)>) -> Box<U> {
        switch f {
        case .some(let transform):
            return self.map(transform)
        case .empty:
            return .empty
        }
    }
}

extension Box {
    func flatMap<U>(_ f: (T) -> Box<U>) -> Box<U> {
        switch self {
        case .some(let t):
            return f(t)
        case .empty:
            return .empty
        }
    }
}
