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

