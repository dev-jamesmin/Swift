//
//  ViewController.swift
//  Guard
//
//  Created by Jaemin Lee on 2021/06/10.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func printNameLet(){
      var value:String?
      value = "Lena"
        print(value as Any) // Optional("Lena")
      if let name = value {
        print(name) // "Lena"
      }
      //if문 안에서만 name 변수를 사용 가능.
    }

    //guard let
    func printNameGuard(){
      var value:String?
      value = "Lena"
        print(value as Any) // Optional("Lena")
      guard let name = value else { return }
      print(name) // "Lena"
      //name변수는 메소드 내에서 지역상수처럼 사용 가능.
    }


}

