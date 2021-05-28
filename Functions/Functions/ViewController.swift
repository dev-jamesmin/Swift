//
//  ViewController.swift
//  Functions
//
//  Created by Jaemin Lee on 2021/05/26.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        printWelcome()
        
        let result = toyInfo(toyName: "Woody")
        print(result)
        
        printPrice(toyPrice: 1000, toyCount: 5)
        printPrice(toyPrice: 1000, toyCount: 7)
        printPrice(toyPrice: 1000, toyCount: 9)
        printPrice(toyPrice: 1000, toyCount: 10)
        printPrice(toyPrice: 1000, toyCount: 14)
        
        test(10, 20)
    }
    
    //    추가로, Output 값만 있는 함수는 Generator, Input 값만 있는 함수는 Consumer
    func addNumber(n1: Int, n2: Int) -> Int {
        return n1 + n2
    }
    
//    다른 함수를 전달인자로 받거나 함수 실행 결과를 함수로 리턴하는 함수를 고차함수라고 합니다.
    func makeInc(_ n: Int) -> (Int) -> Int {
        func inc(_ x: Int) -> Int {
            return n + x
        }
        return inc
    }
    
    func printWelcome(){
        print("Welcome to the toy shop")
    }
    
    
    func toyInfo(toyName: String) -> String{
        let buy = "\(toyName)을(를) 구매하였습니다."
        return buy
    }
    
    
    func printPrice(toyPrice: Int, toyCount: Int){
        print("total price : \(toyPrice*toyCount)")
    }
    
    
    func test(_ value: Int, _ value2: Int){
        print(value, value2)
    }
    
}

