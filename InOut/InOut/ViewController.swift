//
//  ViewController.swift
//  InOut
//
//  Created by Jaemin Lee on 2021/05/26.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        var number = 10
        
        print("Before value : \(number)")
        
        addOne(value: &number)
        
        var a = 10
        var b = 20
         
        print("Before Swap a : \(a), b : \(b)")
        swapNumber(first: &a, second: &b)
         
        print("After Swap a : \(a), b : \(b)")
    }
    
    
    func addOne(value: inout Int){
        value += 1
//        print(value)
        print("After value : \(value)")
    }

    
    func swapNumber(first: inout Int, second: inout Int){
        let temp = first
        first = second
        second = temp
    }
}

